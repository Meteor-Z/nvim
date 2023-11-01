return {
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-lualine/lualine.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            vim.cmd[[colorscheme tokyonight-storm]] 
            require("lualine").setup({
                options = {
                    theme = "tokyonight"
                },
            })
        end
    },
}
