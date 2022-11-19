vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local setup, nvimtree = pcall(require, 'nvim-tree')
if not setup then
    return
end

nvimtree.setup({
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
