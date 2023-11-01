return {
    {
        'akinsho/bufferline.nvim',
        config = function()
            require("bufferline").setup({})
        end
        
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require("ibl").setup()    
        end
        
    }
}
