local opt = vim.opt

-- line numbers
opt.number = true
opt.relativenumber = true

-- tab settings
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

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
vim.g.neovide_hide_mouse_when_typing = false
vim.g.neovide_fullscren = true

-- backspace
opt.backspace = 'indent,eol,start'

-- clipboard
opt.clipboard = 'unnamedplus'

-- split settings
opt.splitbelow = true
opt.splitright = true
