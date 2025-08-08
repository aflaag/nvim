-- imports

require("config.lazy")

require("plugins.nvim-tree")
require("plugins.bufferline")
require("plugins.Comment")
require("plugins.telescope")
require("plugins.conform")
require("plugins.lualine")
require("plugins.mason-tool-installer")
require("plugins.lsp")

-- navigation

vim.keymap.set("n", "j", "jzz", { noremap = true })

vim.api.nvim_command("noremap j jzz")
vim.api.nvim_command("noremap k kzz")
vim.api.nvim_command("noremap { {zz")
vim.api.nvim_command("noremap } }zz")
vim.api.nvim_command("noremap p pzz")
vim.api.nvim_command("noremap P Pzz")
vim.api.nvim_command("noremap dd ddzz")
vim.api.nvim_command("noremap gg ggzz")
vim.api.nvim_command("noremap G Gzz")
vim.api.nvim_command("noremap o zzo")
vim.api.nvim_command("noremap O zzO")

vim.api.nvim_command("noremap <Space>h <C-W><C-H>")
vim.api.nvim_command("noremap <Space>j <C-W><C-J>")
vim.api.nvim_command("noremap <Space>k <C-W><C-K>")
vim.api.nvim_command("noremap <Space>l <C-W><C-L>")

vim.api.nvim_command("noremap J <cmd>e#<CR>") -- go to previous buffer

vim.api.nvim_command("nnoremap <ScrollWheelUp> 2<C-Y>2k")
vim.api.nvim_command("nnoremap <ScrollWheelDown> 2<C-E>2j")
vim.api.nvim_command("nnoremap <S-ScrollWheelUp> 2h")
vim.api.nvim_command("nnoremap <S-ScrollWheelDown> 2l")

vim.api.nvim_command("nnoremap <Tab> >>")
vim.api.nvim_command("nnoremap <S-Tab> <<")

vim.api.nvim_command("inoremap <ScrollWheelUp> <Up>")
vim.api.nvim_command("inoremap <ScrollWheelDown> <Down>")
vim.api.nvim_command("inoremap <S-ScrollWheelUp> <Left><Left>")
vim.api.nvim_command("inoremap <S-ScrollWheelDown> <Right><Right>")

vim.api.nvim_command("inoremap jj <Esc>")
vim.api.nvim_command("inoremap <C-BS> <C-W>")
vim.api.nvim_command("inoremap <S-Tab> <C-d>")

vim.api.nvim_command('vnoremap cc "+y')
vim.api.nvim_command("vnoremap <Tab> >gv")
vim.api.nvim_command("vnoremap <S-Tab> <gv")

vim.api.nvim_command("tnoremap <Esc> <C-\\><C-n>")
vim.api.nvim_command("tnoremap jj <C-\\><C-n>")

-- settings

vim.api.nvim_command("set nu rnu") -- enable hybrid numbers
vim.api.nvim_command("set mouse=a") -- enable mouse
vim.api.nvim_command("set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab") -- tabs as 4 spaces
vim.api.nvim_command("command Os split") -- alias for horizontal split
vim.api.nvim_command("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o") -- remove auto commenting lines

-- theme

vim.api.nvim_command("colorscheme gruvbox")

-- nvim-tree

vim.api.nvim_command("noremap tt <cmd>NvimTreeToggle <CR>")
vim.api.nvim_command("noremap tf <cmd>NvimTreeFindFile <CR>")
vim.api.nvim_command("noremap tr <cmd>NvimTreeRefresh <CR>")

vim.opt.splitright = true -- prevent nvim-tree from opening on the right on the first buffer

-- telescope

vim.api.nvim_command("noremap ff <cmd>Telescope find_files theme=dropdown<CR>")
vim.api.nvim_command("noremap rg <cmd>Telescope live_grep theme=dropdown<CR>")
vim.api.nvim_command("noremap U <cmd>Telescope undo theme=dropdown<CR>")
vim.api.nvim_command("noremap cp <cmd>Telescope neoclip theme=dropdown<CR>")

-- bufferline

vim.api.nvim_command("noremap <Space>1 <cmd>lua require'bufferline'.go_to_buffer(1, true) <CR>")
vim.api.nvim_command("noremap <Space>2 <cmd>lua require'bufferline'.go_to_buffer(2, true) <CR>")
vim.api.nvim_command("noremap <Space>3 <cmd>lua require'bufferline'.go_to_buffer(3, true) <CR>")
vim.api.nvim_command("noremap <Space>4 <cmd>lua require'bufferline'.go_to_buffer(4, true) <CR>")
vim.api.nvim_command("noremap <Space>5 <cmd>lua require'bufferline'.go_to_buffer(5, true) <CR>")
vim.api.nvim_command("noremap <Space>6 <cmd>lua require'bufferline'.go_to_buffer(6, true) <CR>")
vim.api.nvim_command("noremap <Space>7 <cmd>lua require'bufferline'.go_to_buffer(7, true) <CR>")
vim.api.nvim_command("noremap <Space>8 <cmd>lua require'bufferline'.go_to_buffer(8, true) <CR>")
vim.api.nvim_command("noremap <Space>9 <cmd>lua require'bufferline'.go_to_buffer(9, true) <CR>")

vim.api.nvim_command("nnoremap cq <cmd>bdelete<CR>")
