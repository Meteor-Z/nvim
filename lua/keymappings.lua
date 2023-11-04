-- 设置主键
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 可以选择多行然后直接跳转 选中指定行， shift + j/k
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- 分割窗口
vim.keymap.set('n', "<leader>sv", "<C-w>v") -- 水平
vim.keymap.set('n', "<leader>sh", "<C-w>s") -- 垂直

-- 取消高亮 no hight
vim.keymap.set('n', "<leader>nh", ":nohl<CR>")



