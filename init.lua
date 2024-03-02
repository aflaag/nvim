-- IMPORTS

    require("plugins")
    require("nvim-tree-config")
    require("gitsigns-config")
    require("bufferline-config")
    require("Comment-config")
    require("todo-comments-config")

-- GENERAL

    -- Mappings

        -- Centering the current line

            vim.api.nvim_command('noremap j jzz')
            vim.api.nvim_command('noremap k kzz')
            vim.api.nvim_command('noremap { {zz')
            vim.api.nvim_command('noremap } }zz')
            vim.api.nvim_command('noremap p pzz')
            vim.api.nvim_command('noremap P Pzz')
            vim.api.nvim_command('noremap dd ddzz')
            vim.api.nvim_command('noremap gg ggzz')
            vim.api.nvim_command('noremap G Gzz')
            vim.api.nvim_command('noremap o zzo')
            vim.api.nvim_command('noremap O zzO')

        -- Switching between buffers

            vim.api.nvim_command('noremap <Space>h <C-W><C-H>')
            vim.api.nvim_command('noremap <Space>j <C-W><C-J>')
            vim.api.nvim_command('noremap <Space>k <C-W><C-K>')
            vim.api.nvim_command('noremap <Space>l <C-W><C-L>')

        -- Mouse

            -- Normal

                vim.api.nvim_command('nnoremap <ScrollWheelUp> 2<C-Y>2k')
                vim.api.nvim_command('nnoremap <ScrollWheelDown> 2<C-E>2j')
                vim.api.nvim_command('nnoremap <S-ScrollWheelUp> 2h')
                vim.api.nvim_command('nnoremap <S-ScrollWheelDown> 2l')

            -- Insert

                vim.api.nvim_command('inoremap <ScrollWheelUp> <Up>')
                vim.api.nvim_command('inoremap <ScrollWheelDown> <Down>')
                vim.api.nvim_command('inoremap <S-ScrollWheelUp> <Left><Left>')
                vim.api.nvim_command('inoremap <S-ScrollWheelDown> <Right><Right>')

        -- Terminal

            vim.api.nvim_command('tnoremap <Esc> <C-\\><C-n>')
            vim.api.nvim_command('tnoremap jj <C-\\><C-n>')

        -- Other

            -- Normal

                vim.api.nvim_command('nnoremap <Tab> >>')
                vim.api.nvim_command('nnoremap <S-Tab> <<')

            -- Insert

                vim.api.nvim_command('inoremap jj <Esc>')
                vim.api.nvim_command('inoremap <C-BS> <C-W>')
                vim.api.nvim_command('inoremap <S-Tab> <C-d>')

            -- Visual

                vim.api.nvim_command('vnoremap cc "+y')
                vim.api.nvim_command('vnoremap <Tab> >gv')
                vim.api.nvim_command('vnoremap <S-Tab> <gv')

    -- Settings

        vim.api.nvim_command('set nu rnu') -- enable hybrid numbers
        vim.api.nvim_command('set mouse=a') -- enable mouse
        vim.api.nvim_command('set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab') -- tabs as 4 spaces
        vim.api.nvim_command('command Os split') -- alias for horizontal split
        vim.api.nvim_command('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o') -- remove auto commenting lines

-- COLORSCHEME

    -- Settings

        vim.api.nvim_command('colorscheme gruvbox')

-- AIRLINE

    -- Settings

        vim.api.nvim_command('let g:airline_powerline_fonts = 1') -- set different characters

-- NVIM-TREE

    -- Mappings

        vim.api.nvim_command('noremap tt :NvimTreeToggle <CR>')
        vim.api.nvim_command('noremap tf :NvimTreeFindFile <CR>')
        vim.api.nvim_command('noremap tr :NvimTreeRefresh <CR>')

    -- Settings

        vim.opt.splitright = true -- prevent nvim-tree from opening on the right on the first buffer

-- FZF

    -- Mappings

        vim.api.nvim_command('noremap ff :Files <CR>')
        vim.api.nvim_command('noremap fr :Files /<CR>')

-- BUFFERLINE

    -- Mappings

        -- Switching between buffers

            vim.api.nvim_command('noremap <Space>1 <cmd> :lua require\'bufferline\'.go_to_buffer(1, true) <CR>')
            vim.api.nvim_command('noremap <Space>2 <cmd> :lua require\'bufferline\'.go_to_buffer(2, true) <CR>')
            vim.api.nvim_command('noremap <Space>3 <cmd> :lua require\'bufferline\'.go_to_buffer(3, true) <CR>')
            vim.api.nvim_command('noremap <Space>4 <cmd> :lua require\'bufferline\'.go_to_buffer(4, true) <CR>')
            vim.api.nvim_command('noremap <Space>5 <cmd> :lua require\'bufferline\'.go_to_buffer(5, true) <CR>')
            vim.api.nvim_command('noremap <Space>6 <cmd> :lua require\'bufferline\'.go_to_buffer(6, true) <CR>')
            vim.api.nvim_command('noremap <Space>7 <cmd> :lua require\'bufferline\'.go_to_buffer(7, true) <CR>')
            vim.api.nvim_command('noremap <Space>8 <cmd> :lua require\'bufferline\'.go_to_buffer(8, true) <CR>')
            vim.api.nvim_command('noremap <Space>9 <cmd> :lua require\'bufferline\'.go_to_buffer(9, true) <CR>')
