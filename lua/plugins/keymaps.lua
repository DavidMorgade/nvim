-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Telescope search keybinds
vim.keymap.set("n", "<leader>sf", ":Telescope find_files<cr>", { desc = 'Find Normal Files' })
vim.keymap.set("n", "<leader>sp", ":Telescope git_files<cr>", { desc = 'Find Git Files' })
vim.keymap.set("n", "<leader>sg", ":Telescope live_grep<cr>", { desc = 'Find Word' })
vim.keymap.set("n", "<leader>s.", ":Telescope oldfiles<cr>", { desc = 'Find Old Files' })

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Toggle Keybinds
-- nvim-tree toggle "toggle explorer"
vim.keymap.set("n", "<leader>te", ":NvimTreeFindFileToggle<cr>",
  { noremap = true, silent = true, desc = "Toggle Explorer" })
-- toggle terminal
vim.keymap.set("n", "<leader>tt", ":lua require('toggleterm').toggle()<cr>",
  { noremap = true, silent = true, desc = "Toggle Terminal" })
vim.keymap.set("t", "<leader>tt", "<C-\\><C-n>:lua require('toggleterm').toggle()<cr>",
  { noremap = true, silent = true, desc = "Toggle Terminal" })
-- toggle comment
vim.keymap.set({ "n", "v" }, "<leader>tc", ":CommentToggle<cr>", { desc = 'Comment Code' })
-- toogle diagnostic - LSP
vim.api.nvim_set_keymap('n', '<space>td', '<cmd>lua vim.diagnostic.open_float()<CR>',
  { noremap = true, silent = true, desc = 'Toggle LSP Diagnostic Window' })
-- toggle compiler "tgcc"
vim.api.nvim_set_keymap('n', '<leader>tgcc', "<cmd>CompilerOpen<cr>",
  { noremap = true, silent = true, desc = 'Toggle Compiler' })

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- File Keybinds
-- Format file
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = 'Format File' })

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Go to utilities
-- Go dashboard
vim.keymap.set("n", "<leader>gd", ":Dashboard<cr>", { desc = 'Go to Dashboard' })

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Reload nvim config
vim.api.nvim_set_keymap('n', '<leader>so', ":so<cr>", { noremap = true, silent = true, desc = 'Reload nvim config' })

-- Redo last selected option
vim.api.nvim_set_keymap('n', '<S-F6>',
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true, desc = 'Redo last selected option' })

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
