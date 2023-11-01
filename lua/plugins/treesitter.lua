return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/playground",
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        main = "nvim-treesitter.configs",
        build = ":TSUpdate",
        opts = {
            ensure_installed = "all",
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            playground = {
                enable = true,
            },
            textobjects =  {
                select = {
                    enable = true,
                    -- 空格？
                    include_surrounding_whitespace = false,
                },
            }
            
        },
    },
    {
        
    }

}
