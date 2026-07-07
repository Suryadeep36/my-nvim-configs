vim.opt.termguicolors = true
-- Navigation
vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>")

-- Management
vim.keymap.set("n", "<leader>bd", "<Cmd>bdelete<CR>")
vim.keymap.set("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>")

-- Picking
vim.keymap.set("n", "<leader>bp", "<Cmd>BufferLinePick<CR>")
vim.keymap.set("n", "<leader>bD", "<Cmd>BufferLinePickClose<CR>")

-- Numbers
for i = 1, 9 do
    vim.keymap.set("n", "<leader>" .. i, function()
        require("bufferline").go_to(i, true)
    end)
end
require("bufferline").setup{}
