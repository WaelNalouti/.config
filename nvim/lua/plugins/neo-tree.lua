return {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
        {
            "<leader>er",
            -- ":Neotree toggle right<CR>",
            function()
                require("neo-tree.command").execute({
                    toggle = true,
                    position = "right",
                    dir = require("lazyvim.util").get_root(),
                })
            end,
            silent = true,
            desc = "Toggle right Explorer NeoTree (root dir)",
        },
        {
            "<leader>ef",
            -- ":Neotree toggle float<CR>",
            function()
                require("neo-tree.command").execute({
                    toggle = true,
                    position = "float",
                    dir = require("lazyvim.util").get_root(),
                })
            end,
            silent = true,
            desc = "Toggle float Explorer NeoTree (root dir)",
        },
        {
            "<leader>ee",
            -- ":Neotree toggle float<CR>",
            function()
                require("neo-tree.command").execute({
                    toggle = true,
                    position = "current",
                    dir = require("lazyvim.util").get_root(),
                })
            end,
            silent = true,
            desc = "Toggle current Explorer NeoTree (root dir)",
        },
    },
    opts = {
        window = {
            position = "right",
        },
    },
}
