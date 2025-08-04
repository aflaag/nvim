require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
    nix = { "nixfmt" },
    markdown = { "markdownlint" },
    bib = { "bibtex-tidy" },
    css = { "prettierd" },
    -- tex = { "latexindent" },
  },
  format_on_save = {
    lsp_format = "fallback",
  },
})
