vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  diagnostics = {
    enable = true,
    show_on_dirs = true
  },
  git = {
    ignore = false
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true
      }
    }
  },
  view = {
    hide_root_folder = true,
    width = 40
  }
})
