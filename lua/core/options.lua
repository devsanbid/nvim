vim.opt.guicursor = ""

vim.opt.nu = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.showtabline = 0
vim.opt.fillchars  = { eob = " "}

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.virtualedit = "block"
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 16
vim.opt.signcolumn = "no"
vim.opt.isfname:append("@-@")
vim.opt.pumheight = 8
vim.opt.mouse = ""

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
