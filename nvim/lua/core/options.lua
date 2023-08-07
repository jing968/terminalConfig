local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- disable wrapping
opt.wrap = false

-- curosr 
opt.cursorline = true

-- enable mouse
opt.mouse:append("a")

-- enable clipboard
opt.clipboard:append("unnamedplus")

-- split screen config
opt.splitright = true
opt.splitbelow = true

-- searching
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- theme
vim.cmd[[colorscheme tokyonight-moon]]



