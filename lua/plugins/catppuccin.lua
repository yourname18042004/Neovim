return{ 
    "catppuccin/nvim",
    name = "catppuccin", 
    --"arturgoms/moonbow.nvim",
    --"ellisonleao/gruvbox.nvim",
    --name = "gruv_box",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            transparent_background = true,
        })
        --require("gruvbox").setup({
        --    transparent_mode = true,
        --})
        --vim.cmd.colorscheme "gruvbox"
        --vim.cmd.colorscheme "moonbow"
        vim.cmd.colorscheme "catppuccin"

    end 
}
