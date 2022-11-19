vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<Esc>") -- exit insert mode

keymap.set("n", "<leader>nh", ":nohl<CR>") -- no highlight
keymap.set("n", "x", '"_x') -- delete without yanking
keymap.set("n", "<S-l>", ":bnext<CR>") -- next tab
keymap.set("n", "<S-h>", ":bprev<CR>") -- previous tab

-- nvimtree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true }) -- toggle nvimtree

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>")
