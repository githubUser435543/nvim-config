-- documentation: https://github.com/MeanderingProgrammer/render-markdown.nvim/blob/main/README.md
return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},

    config = function()
        require("render-markdown").setup({
            heading = {
                sign = false,
                width = "block",
                border = {true, false, false, false, false, false},
                left_pad = 0,
                right_pad = 0,
                left_margin = 0.5,
                position = "inline",
                icons = {"", "", "", "", "", ""}
            },

            sign = {
                enabled = false
            }
        })
    end,
}
