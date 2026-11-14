-- imports

require("config.lazy")

require("plugins.nvim-tree")
require("plugins.bufferline")
require("plugins.mini-comment")
require("plugins.telescope")
require("plugins.conform")
require("plugins.lualine")
require("plugins.mason-tool-installer")
require("plugins.lsp")
require("plugins.vimtex")

-- navigation

vim.keymap.set("", "j", "jzz", { desc = "Scendi e centra la riga" })
vim.keymap.set("", "k", "kzz", { desc = "Sali e centra la riga" })
vim.keymap.set("", "{", "{zz", { desc = "Paragrafo precedente e centra la riga" })
vim.keymap.set("", "}", "}zz", { desc = "Paragrafo successivo e centra la riga" })
vim.keymap.set("", "p", "pzz", { desc = "Incolla dopo e centra la riga" })
vim.keymap.set("", "P", "Pzz", { desc = "Incolla prima e centra la riga" })
vim.keymap.set("", "dd", "ddzz", { desc = "Elimina la riga e centra il cursore" })
vim.keymap.set("", "gg", "ggzz", { desc = "Inizio file e centra la riga" })
vim.keymap.set("", "G", "Gzz", { desc = "Fine file e centra la riga" })
vim.keymap.set("", "o", "zzo", { desc = "Centra e inserisci una riga sotto" })
vim.keymap.set("", "O", "zzO", { desc = "Centra e inserisci una riga sopra" })

vim.keymap.set("", "<Space>h", "<C-W><C-H>", { desc = "Vai alla finestra a sinistra" })
vim.keymap.set("", "<Space>j", "<C-W><C-J>", { desc = "Vai alla finestra sotto" })
vim.keymap.set("", "<Space>k", "<C-W><C-K>", { desc = "Vai alla finestra sopra" })
vim.keymap.set("", "<Space>l", "<C-W><C-L>", { desc = "Vai alla finestra a destra" })

vim.keymap.set("", "J", "<cmd>e#<CR>", { desc = "Torna al buffer precedente" })

vim.keymap.set("n", "<ScrollWheelUp>", "2<C-Y>2k", { desc = "Scorri verso l’alto" })
vim.keymap.set("n", "<ScrollWheelDown>", "2<C-E>2j", { desc = "Scorri verso il basso" })
vim.keymap.set("n", "<S-ScrollWheelUp>", "2h", { desc = "Scorri a sinistra" })
vim.keymap.set("n", "<S-ScrollWheelDown>", "2l", { desc = "Scorri a destra" })

vim.keymap.set("n", "<Tab>", ">>", { desc = "Aumenta il rientro" })
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Riduci il rientro" })

vim.keymap.set("i", "<ScrollWheelUp>", "<Up>", { desc = "Scorri verso l’alto" })
vim.keymap.set("i", "<ScrollWheelDown>", "<Down>", { desc = "Scorri verso il basso" })
vim.keymap.set("i", "<S-ScrollWheelUp>", "<Left><Left>", { desc = "Scorri a sinistra" })
vim.keymap.set("i", "<S-ScrollWheelDown>", "<Right><Right>", { desc = "Scorri a destra" })

vim.keymap.set("i", "jj", "<Esc>", { desc = "Esci dalla modalità inserimento" })
vim.keymap.set("i", "<C-BS>", "<C-W>", { desc = "Elimina la parola precedente" })
vim.keymap.set("i", "<S-Tab>", "<C-d>", { desc = "Riduci il rientro" })

vim.keymap.set("v", "cc", '"+y', { desc = "Copia la selezione negli appunti di sistema" })
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Aumenta il rientro" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Riduci il rientro" })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Esci dalla modalità terminale" })
vim.keymap.set("t", "jj", "<C-\\><C-n>", { desc = "Esci dalla modalità terminale" })

-- settings

vim.api.nvim_command("set nu rnu") -- enable hybrid numbers
vim.opt.cursorline = true -- highlight the current cursor line
vim.opt.undofile = true -- preserve undo history between sessions
vim.opt.signcolumn = "yes" -- reserve space for Git and diagnostic signs
vim.opt.ignorecase = true -- ignore case in searches
vim.opt.smartcase = true -- match case when the search contains uppercase letters
vim.api.nvim_command("set mouse=a") -- enable mouse
vim.api.nvim_command("set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab") -- tabs as 4 spaces
vim.api.nvim_command("command Os split") -- alias for horizontal split
vim.api.nvim_command("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o") -- remove auto commenting lines

-- theme

vim.api.nvim_command("colorscheme gruvbox")

-- nvim-tree

vim.keymap.set("", "tt", "<cmd>NvimTreeToggle <CR>", { desc = "Mostra o nascondi albero dei file" })
vim.keymap.set("", "tf", "<cmd>NvimTreeFindFile <CR>", { desc = "Trova il file corrente nell’albero" })
vim.keymap.set("", "tr", "<cmd>NvimTreeRefresh <CR>", { desc = "Aggiorna albero dei file" })

vim.opt.splitright = true -- prevent nvim-tree from opening on the right on the first buffer

-- telescope

vim.keymap.set("", "ff", "<cmd>Telescope find_files theme=dropdown<CR>", { desc = "Cerca file" })
vim.keymap.set("", "rg", "<cmd>Telescope live_grep theme=dropdown<CR>", { desc = "Cerca testo nel progetto" })
vim.keymap.set("", "U", "<cmd>Telescope undo theme=dropdown<CR>", { desc = "Esplora la cronologia delle modifiche" })
vim.keymap.set("", "cp", "<cmd>Telescope neoclip theme=dropdown<CR>", { desc = "Esplora la cronologia degli appunti" })

-- bufferline

vim.keymap.set("", "<Space>1", "<cmd>lua require'bufferline'.go_to_buffer(1, true) <CR>", { desc = "Vai al buffer 1" })
vim.keymap.set("", "<Space>2", "<cmd>lua require'bufferline'.go_to_buffer(2, true) <CR>", { desc = "Vai al buffer 2" })
vim.keymap.set("", "<Space>3", "<cmd>lua require'bufferline'.go_to_buffer(3, true) <CR>", { desc = "Vai al buffer 3" })
vim.keymap.set("", "<Space>4", "<cmd>lua require'bufferline'.go_to_buffer(4, true) <CR>", { desc = "Vai al buffer 4" })
vim.keymap.set("", "<Space>5", "<cmd>lua require'bufferline'.go_to_buffer(5, true) <CR>", { desc = "Vai al buffer 5" })
vim.keymap.set("", "<Space>6", "<cmd>lua require'bufferline'.go_to_buffer(6, true) <CR>", { desc = "Vai al buffer 6" })
vim.keymap.set("", "<Space>7", "<cmd>lua require'bufferline'.go_to_buffer(7, true) <CR>", { desc = "Vai al buffer 7" })
vim.keymap.set("", "<Space>8", "<cmd>lua require'bufferline'.go_to_buffer(8, true) <CR>", { desc = "Vai al buffer 8" })
vim.keymap.set("", "<Space>9", "<cmd>lua require'bufferline'.go_to_buffer(9, true) <CR>", { desc = "Vai al buffer 9" })

vim.keymap.set("n", "cq", "<cmd>bdelete<CR>", { desc = "Chiudi il buffer corrente" })
