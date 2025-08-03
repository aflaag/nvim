local actions = require("telescope.actions")

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        [":q"] = actions.close
      },
      n = {
        [":q"] = actions.close
      }
    }
  }
}
