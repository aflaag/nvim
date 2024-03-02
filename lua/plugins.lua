-- TODO: automate CocInstall coc-rust-analyzer

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'ap/vim-css-color'
    use 'morhetz/gruvbox'
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use { 'junegunn/fzf.vim' }
    use { 'mg979/vim-visual-multi', branch = 'master' }
    use 'lewis6991/gitsigns.nvim'
    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'nvim-tree/nvim-web-devicons' }
    use 'numToStr/Comment.nvim'
    use { 'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, }
    use 'lervag/vimtex'
end)
