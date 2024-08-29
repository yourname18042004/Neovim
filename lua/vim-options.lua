--vim.cmd("set expandtab")
--vim.cmd("set tabstop=4")
--vim.cmd("set softtabstop=4")
--vim.cmd("set shiftwidth=4")
--vim.cmd("set autoindent")
vim.g.mapleader = " "
--vim.wo.number = true
--vim.wo.relativenumber = true

vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
--vim.opt.backup = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2 -- dieu khien thanh trang thai
vim.opt.expandtab = true
vim.opt.scroll = 10
--vim.opt.shell = 'fish'
--vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true --che do khong phan biet chu hoa chu thuong 

vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.ai = true -- tu dong thut vao le 
vim.opt.si = true -- tu dong thut le theo cu phap cua ngon ngu lap trinh
vim.opt.wrap = true -- tu dong ngat dong khi qua chieu rong cua cua so

--vim.opt.backspace = 'start,eol,indent'
--vim.opt.path:append { '**' }
--vim.opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
--vim.cmd([[let &t_Cs = "\e[4:3m]"]])
--vim.cmd([[let &t_Ce = "\e[4:0m]"]])

--vim.api.nvim_create_autocmd("InsertLeave", {
--    pattern = '*',
--    command = "set nopaste"
--})

vim.opt.formatoptions:append { 'r' }
