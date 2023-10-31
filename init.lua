local option = vim.opt
local buffer = vim.b 
local global = vim.g 

-- Option Settings --
option.number = true
option.relativenumber = true
option.showmode = true

option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true

option.hlsearch = true
option.smartcase = true
option.ignorecase = true

option.termguicolors = true

option.signcolumn = "yes"

option.updatetime = 50
option.autoread = true
option.exrc = true
option.wrap = false


-- Buffer Settings --
buffer.fileenconding = "utf-8"

-- Global Settings --
global.mapleader = " "

-- Key Map --
-- v模式下按KJ能够快速换行
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- 全局粘贴？ 但是我现在弄不好
vim.keymap.set({ "v", "n" }, "<leader>y", "\"+y")


