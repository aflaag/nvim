-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local plugins = {
    'nvim-tree/nvim-web-devicons',
    { 'nvim-tree/nvim-tree.lua', dependencies = 'nvim-tree/nvim-web-devicons' },
    { 'neoclide/coc.nvim', branch = 'release' },
    'vim-airline/vim-airline',
    'vim-airline/vim-airline-themes',
    'ap/vim-css-color',
    'morhetz/gruvbox',
    { 'mg979/vim-visual-multi', branch = 'master' },
    'lewis6991/gitsigns.nvim',
    { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
    'numToStr/Comment.nvim',
    { 'folke/todo-comments.nvim', dependencies = 'nvim-lua/plenary.nvim' },
    {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      ft = { "markdown" }, build = function()
        vim.fn["mkdp#util#install"]()
      end
    },
    {
      "catgoose/nvim-colorizer.lua",
      event = "BufReadPre",
    },
    'lervag/vimtex',
    {
      'goolord/alpha-nvim',
      config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
      end
    },
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = {
        'nvim-lua/plenary.nvim',
        {
          'nvim-telescope/telescope-fzf-native.nvim',
          build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
        }
      }
    }
}

-- Setup lazy.nvim
require("lazy").setup({
  spec = plugins,
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
