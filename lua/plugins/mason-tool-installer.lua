require("mason-tool-installer").setup({
  ensure_installed = {
    "bibtex-tidy",
    "black",
    "isort",
    "markdownlint",
    "nixfmt",
    "stylua",

    "nil",
    "lua-language-server",
    "pyright",
    "rust-analyzer",
    "texlab",
  },
})
