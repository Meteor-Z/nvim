return  {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",    
    },
    config = function()
        local servers = {
            clangd = { },
            
        },
        -- require("lspconfig").clangd.setu
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(servers), -- 里面的key安装
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        settings = servers[server_name],
                        on_attch = on_attch,
                    }
                end 
            },
            
        })
    end
}
