return{
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup({
            options = {
                --theme = "gruvbox"
                --theme = "moonbow"
                theme = "dracula"
            }
        })
    end
}
