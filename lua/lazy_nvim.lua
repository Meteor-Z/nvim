local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 加入插件
--local plugins = {
--    {
--       "folke/tokyonight.nvim",
--        config = function()
--            vim.cmd[[colorscheme tokyonight]]
--        end
--    },
--}
--- 使用插件
--local opts = {
--   install = {
--        colorscheme = { "tokyonight" },      
--    }
--}
require("lazy").setup("plugins", opts)
