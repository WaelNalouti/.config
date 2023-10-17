return {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
  name = "onedark",
  opts = {
    style = "cool", -- 'cool'
    transparent = true,
    -- toggle theme style ---
    toggle_style_key = "<leader>ut", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = { "cool", "warm" }, -- List of styles to toggle between
    -- toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
    ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
    -- Lualine options --
    lualine = {
      transparent = false, -- lualine center bar transparency
    },
    -- Plugins Config --
    diagnostics = {
      darker = true, -- darker colors for diagnostic
      undercurl = true, -- use undercurl instead of underline for diagnostics
      background = true, -- use background color for virtual text
    },
  },
  init = function()
    -- vim.cmd.colorscheme("onedark")
    vim.cmd("colorscheme onedark")
  end,
}
