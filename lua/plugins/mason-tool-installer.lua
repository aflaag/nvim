require("mason-tool-installer").setup({
  ensure_installed = {
    "bibtex-tidy",
    "black",
    "isort",
    "markdownlint",
    "nixfmt",
    "stylua",
  },
})
