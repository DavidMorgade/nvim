-- space bar leader key
vim.g.mapleader = " "
-- jj or kk in insert mode to escape
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kk", "<Esc>", { noremap = true, silent = true })
-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>") -- next buffer
vim.keymap.set("n", "<leader>p", ":bp<cr>") -- previous buffer
vim.keymap.set("n", "<leader>x", ":bd<cr>") -- close buffer
-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- paste from clipboard
vim.keymap.set("n", "<leader>p", [["+p]])
-- Format code
-- vim.keymap.set("n", "<leader>f", ":Neoformat<cr>")
