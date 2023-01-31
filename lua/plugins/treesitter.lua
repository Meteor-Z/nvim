require 'nvim-treesitter.configs'.setup{
    ensure_installed = {"vim","help","bash","c","cpp","javascript","java","json","lua","python"},
    
    highlight = { enable = true},
    ubdebt = { enable = true},

    -- 不同括号颜色区分
    rainbow = {
        enable =true,
        entended_mode = true,
        max_file_lines = nil,
    }



}

