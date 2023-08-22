return {
    "navarasu/onedark.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        style = "dark", -- 'cool'
        transparent = false,
        -- toggle theme style ---
        toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
        toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
        ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
        -- Lualine options --
        lualine = {
            transparent = true, -- lualine center bar transparency
        },
        -- Plugins Config --
        diagnostics = {
            darker = true, -- darker colors for diagnostic
            undercurl = true, -- use undercurl instead of underline for diagnostics
            background = true, -- use background color for virtual text
        },
    },
}
