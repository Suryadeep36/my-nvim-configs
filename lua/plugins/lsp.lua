return {
  "neovim/nvim-lspconfig",

  config = function()
    require("java").setup()
    require("config.lsp")
  end,
}
