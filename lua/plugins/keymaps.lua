-- Telescope
vim.keymap.set("n", "<leader>sf", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>sp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>sg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>s.", ":Telescope oldfiles<cr>")
-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")
-- nvim-comment
vim.keymap.set({"n", "v"}, "<leader>/", ":CommentToggle<cr>")
-- format document
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)
