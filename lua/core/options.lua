-- 行号
vim.opt.number = true
vim.opt.relativenumber = true


-- 缩进
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true


-- 防止包裹
vim.opt.wrap = false

-- 光标行
-- vim.opt.cursorline = true/false


-- 启动鼠标
vim.opt.mouse:append("a")

-- 系统剪贴板
vim.opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
vim.opt.splitright = true
vim.opt.splitbelow = true

-- 搜索忽略大小写
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 外观
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
-- 主题
vim.cmd[[colorscheme tokyonight-moon]]
