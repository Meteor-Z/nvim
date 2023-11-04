local option = vim.opt
local buffer = vim.b 
local global = vim.g 

-- Option Settings --
-- 行号
vim.opt.relativenumber = true
vim.opt.number = true

-- 缩进
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.autoindent = true

-- 防止包裹
option.wrap = false

-- 光标行
option.cursorline = true

-- 启动鼠标
option.mouse:append("a")

-- 启动系统剪贴板

option.clipboard:append("unnamedplus")

-- 搜索
option.ignorecase = true
option.smartcase = true

-- 真颜色
option.termguicolors = true
option.signcolumn = "yes"


