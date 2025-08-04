vim.lsp.config("luals", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".luarc.jsonc" },
})

vim.lsp.config("nil_ls", {
  cmd = { "nil" },
  filetypes = { "nix" },
  root_markers = { "flake.nix", "shell.nix", ".git" },
})

vim.lsp.config("pyright", {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt" },
})

vim.lsp.config("rust_analyzer", {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml", "rust-project.json" },
})

vim.lsp.config("texlab", {
  cmd = { "texlab" },
  filetypes = { "tex", "bib" },
  root_markers = { ".latexmkrc", ".texlab.json", ".git" },
})

vim.lsp.enable("luals")
vim.lsp.enable("nil_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("texlab")
