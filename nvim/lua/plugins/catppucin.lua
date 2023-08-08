-- return {
--     "catppuccin/nvim",
--     -- lazy = true,
--     -- name = "catppuccin",
--     opts = {
--         colorscheme = "catppuccin",
--         transparent_background = true,
--         integrations = {
--             alpha = true,
--             cmp = true,
--             gitsigns = true,
--             illuminate = true,
--             indent_blankline = { enabled = true },
--             lsp_trouble = true,
--             mini = true,
--             native_lsp = {
--                 enabled = true,
--                 underlines = {
--                     errors = { "undercurl" },
--                     hints = { "undercurl" },
--                     warnings = { "undercurl" },
--                     information = { "undercurl" },
--                 },
--             },
--             navic = { enabled = true },
--             neotest = true,
--             noice = true,
--             notify = true,
--             nvimtree = true,
--             semantic_tokens = true,
--             telescope = true,
--             treesitter = true,
--             which_key = true,
--         },
--     },
-- }

return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    build = ":CatppuccinCompile",
    opts = {
        transparent_background = false,
        styles = {
            keywords = { "bold" },
            functions = { "italic" },
        },
        integrations = {
            lsp_trouble = true,
            mini = true,
            native_lsp = {
                enabled = true,
                underlines = {
                    errors = { "undercurl" },
                    hints = { "undercurl" },
                    warnings = { "undercurl" },
                    information = { "undercurl" },
                },
            },
            navic = { enabled = true },
            noice = true,
            notify = true,
            semantic_tokens = true,
            telescope = true,
            treesitter = true,
            leap = true,
            mason = true,
            neotree = true,
            neotest = true,
            which_key = true,
            nvimtree = true,
            dashboard = false,
            ts_rainbow = false,
            dap = { enabled = true, enable_ui = true },
            alpha = true,
            cmp = true,
        },
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
    end,
}
