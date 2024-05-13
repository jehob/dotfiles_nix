return {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
                -- setup catpuccin
                require("catppuccin").setup({
                        flavour = "mocha",
                })
                vim.cmd.colorscheme "catppuccin"
        end
}
