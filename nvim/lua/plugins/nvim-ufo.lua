return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",

  setup = function()
    require("ufo").setup({
      provider_selector = function()
        return { "lsp", "indent" }
      end,
    })
  end,
}
