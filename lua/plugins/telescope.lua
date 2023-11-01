return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim", 
        {
            "nvim-telescope/telescope-fzf-native.nvim", 
            build = "make",
        }
    
    },
    config = function() 
        require('telescope').setup {
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        }
        require("telescope").load_extension("fzf")
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- find_file
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- find grep 
        vim.keymap.set('n', '<leader><space>', builtin.buffers, {}) -- find buffer
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) -- find help
        vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })        
    end
}
