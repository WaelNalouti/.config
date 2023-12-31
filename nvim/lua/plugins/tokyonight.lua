return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    transparent = false,
    -- styles = {
    --   sidebars = "transparent",
    --   floats = "transparent",
    -- },
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
      dashboard = true,
      ts_rainbow = false,
      dap = { enabled = true, enable_ui = true },
      alpha = true,
      cmp = true,
    },
  },
}
