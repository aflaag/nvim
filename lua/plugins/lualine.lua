require("lualine").setup({
  options = { theme = "gruvbox" },
  sections = {
    lualine_c = {
      { "filename" },
      {
        function()
          local reg = vim.fn.reg_recording()
          return " recording to '" .. reg .. "'"
        end,
        color = "WarningMsg",
        cond = function()
          return vim.fn.reg_recording() ~= ""
        end,
      },
    },
  },
})
