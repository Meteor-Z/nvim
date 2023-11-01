return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        {
            "saadparwaiz1/cmp_luasnip",
            dependencies = {  
                "L3MON4D3/LuaSnip",
                dependencies = {
                    "rafamadriz/friendly-snippets",
                },
            },
        },
    },
    config = function()
        local has_words_before = function()
            unpack = unpack or table.unpack      
            local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        end

        require("luasnip.loaders.from_vscode").lazy_load()

        local luasnip = require('luasnip')
        local cmp = require("cmp")
        local cmp_mappings = {
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                    -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable() 
                    -- that way you will only jump inside the snippet region
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end, { "i", "s" }),

            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, { "i", "s" }),

            -- ... Your other mappings ..
            ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept
        }

        cmp.setup {
            snippet = {
                expand = function(args)
                    -- vim.fn["vsnip#anonymous"](args.body)
                    require("luasnip").lsp_expand(args.body) 
                end,
            },

            sources = cmp.config.sources {
                { name = 'nvim_lsp' },
                { name = 'path' },
                { name = 'luasnip' },
                { name = 'buffer' },
            },
            mapping = cmp.mapping.preset.insert(cmp_mappings),
        }

        cmp.setup.cmdline('/', {
            mapping = cmp.mapping.preset.insert(cmp_mappings),
            sources = {
                { name = "buffer" },
            },
        })

        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.insert(cmp_mappings),
            sources = cmp.config.sources({
                { name = "buffer" },
                { name = "cmdline" },
            }),
        })

    end
}
