local alpha = require("alpha")
local theta = require("alpha.themes.theta")

local section_mru = {
  type = "group",
  val = {
    {
      type = "text",
      val = "Recent Files",
      opts = {
        hl = "SpecialComment",
        shrink_margin = false,
        position = "center",
      },
    },
    { type = "padding", val = 1 },
    {
      type = "group",
      val = function()
        return { theta.mru(0, vim.fn.getcwd()) }
      end,
      opts = { shrink_margin = false },
    },
  },
}

local header = theta.header
header.val = require("ascii").art.text.neovim.sharp

local config = {
  layout = {
    { type = "padding", val = 2 },
    header,
    { type = "padding", val = 2 },
    section_mru,
  },
  opts = alpha.opts,
}

vim.cmd([[
  autocmd FileType alpha setlocal nofoldenable
]])

return {
  config = config,
}
