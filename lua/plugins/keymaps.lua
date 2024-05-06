-- Telescope
vim.keymap.set("n", "<leader>sf", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>sp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>sg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>s.", ":Telescope oldfiles<cr>")
vim.api.nvim_set_keymap('n', '<leader>le', ':Telescope lsp_document_diagnostics<CR>', { noremap = true, silent = true })
-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")
-- nvim-comment
vim.keymap.set({"n", "v"}, "<leader>/", ":CommentToggle<cr>")
-- format document
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)
-- toggle terminal remap
vim.keymap.set("n", "<leader>t", ":lua require('toggleterm').toggle()<cr>")
-- toggle terminal remap in terminal mode
vim.keymap.set("t", "<leader>t", "<C-\\><C-n>:lua require('toggleterm').toggle()<cr>")


-- Compiler.nvim keymaps
-- Open compiler
vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap('n', '<S-F6>',
     "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true })

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
