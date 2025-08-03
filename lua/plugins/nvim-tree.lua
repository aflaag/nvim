local function key_bindings(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = false }
  end

  api.config.mappings.default_on_attach(bufnr) -- use all default mappings

  vim.keymap.set("n", "f", "<Nop>", opts("Remap for filters"))
  vim.keymap.set("n", "ff", "<cmd>Telescope find_files<CR>", opts("Open Telescope"))
end

require("nvim-tree").setup({
  on_attach = key_bindings,
  view = {
    side = "left",
    width = 35,
    number = true,
    relativenumber = true,
    preserve_window_proportions = true,
  },
  renderer = {
    icons = {
      git_placement = "after",
      glyphs = {
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  git = {
    ignore = false,
  },
})
