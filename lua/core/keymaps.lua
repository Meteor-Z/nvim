-- 主键
vim.g.mapleader = " "

-- 一行或者多行移动 SHIFT + j/k  来上下左右移动
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")



-- 水平增加窗口 主键 + sv or sh
vim.keymap.set("n","<leader>sv", "<C-w>v") -- 水平
vim.keymap.set("n","<leader>sh","<C-w>s") -- 垂直



-- 取消高亮  主键 + nh
vim.keymap.set("n","<leader>nh",":nohl<CR>")









