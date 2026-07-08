local capabilities = vim.lsp.protocol.make_client_capabilities()

local ok, blink = pcall(require, "blink.cmp")
if ok then
  capabilities = blink.get_lsp_capabilities(capabilities)
end

vim.lsp.config("clangd", {
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
  },
})

vim.lsp.config("jdtls", {
  capabilities = capabilities,
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  severity_sort = true,
  update_in_insert = false,
  float = {
    border = "rounded",
    source = "if_many",
  },
})

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focusable = false })
  end,
})

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

vim.lsp.enable("clangd")
vim.lsp.enable("bashls")
vim.lsp.enable("jdtls")
