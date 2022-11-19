local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status then
    return
end

treesitter.setup {
    ensure_installed = { "lua", "tsx", "typescript", "json", "javascript", "html", "graphql", "css" },
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
    }
}
