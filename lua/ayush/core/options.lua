local opt = vim.opt
local g = vim.g

-- line numbers
opt.number = true
opt.relativenumber = true

-- tab settings
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true
opt.linebreak = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursorline
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
opt.showmode = false
opt.guifont = 'JetBrainsMono NF:h11'

-- neovide settings
g.neovide_hide_mouse_when_typing = true

-- backspace
opt.backspace = 'indent,eol,start'

-- clipboard
opt.clipboard = 'unnamedplus'

-- split settings
opt.splitbelow = true
opt.splitright = true

opt.undofile = true
opt.timeoutlen = 300
opt.updatetime = 300
opt.numberwidth = 4
opt.scrolloff = 8
opt.sidescrolloff = 8

-- flash yanked text for visual feedback
vim.cmd [[
    augroup highlighted_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch",timeout=100}
]]
