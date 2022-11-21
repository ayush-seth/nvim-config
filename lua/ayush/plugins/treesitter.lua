require("nvim-treesitter.configs").setup {
  ensure_installed = { "lua", "tsx", "typescript", "json", "javascript", "html", "graphql", "css" },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
  indentation = { enable = true }
}
