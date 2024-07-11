-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Telescope search keybinds
vim.keymap.set("n", "<leader>sf", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>sp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>sg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>s.", ":Telescope oldfiles<cr>")

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Toggle Keybinds
-- nvim-tree toggle "toggle explorer"
vim.keymap.set("n", "<leader>te", ":NvimTreeFindFileToggle<cr>")
-- toggle terminal
vim.keymap.set("n", "<leader>tt", ":lua require('toggleterm').toggle()<cr>")
vim.keymap.set("t", "<leader>tt", "<C-\\><C-n>:lua require('toggleterm').toggle()<cr>")
-- toggle comment
vim.keymap.set({ "n", "v" }, "<leader>tc", ":CommentToggle<cr>")
-- toogle diagnostic - LSP
vim.api.nvim_set_keymap('n', '<space>td', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
-- toggle compiler "tgcc"
vim.api.nvim_set_keymap('n', '<leader>tgcc', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- File Keybinds
-- Format file
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Go to utilities
-- Go dashboard
vim.keymap.set("n", "<leader>gd", ":Dashboard<cr>")

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Reload nvim config
vim.api.nvim_set_keymap('n', '<leader>so', ":so<cr>", { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap('n', '<S-F6>',
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true })

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
