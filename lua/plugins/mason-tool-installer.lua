require("mason-tool-installer").setup({
  ensure_installed = {
    "bibtex-tidy",
    "black",
    "isort",
    "markdownlint",
    "nixfmt",
    "stylelint",
    "stylua",

    "nil",
    "lua-language-server",
    "prettierd",
    "pyright",
    "rust-analyzer",
    "texlab",
  },
})
