local ts = require("telescope")
local actions = require("telescope.actions")

ts.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    }
  }
})

ts.load_extension("fzf")
