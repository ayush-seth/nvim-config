local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- general
map("i", "jk", "<Esc>") -- exit insert mode

map("n", "<leader>nh", ":nohl<CR>") -- no highlight
map("n", "x", '"_x') -- delete without yanking
map("n", "<S-l>", ":bnext<CR>") -- next tab
map("n", "<S-h>", ":bprev<CR>") -- previous tab

-- nvimtree
map("n", "<leader>e", ":NvimTreeFocus<CR>") -- focus nvimtree
map("n", "<C-n>", ":NvimTreeToggle<CR>") -- toggle nvimtree

-- telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fs", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
map("n", "<leader>fh", ":Telescope help_tags<CR>")
map("n", "<leader>fr", ":Telescope oldfiles<CR>")
