local ts_status, ts = pcall(require, "telescope")
if not ts_status then
    print("Telescope not found")
    return
end
local actions_status, actions = pcall(require, "telescope.actions")
if not actions_status then
    print("Telescope actions not found")
    return
end

ts.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
            }
        }
    }
})

ts.load_extension("fzf")
