return {
    "windwp/nvim-autopairs",
    config = function()
        require("nvim-autopairs").setup({
            enbale_check_bracket_line = false
        })
    end
}
