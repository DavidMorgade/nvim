-- space bar leader key
vim.g.mapleader = " "
-- press tab in normal mode and actually tab the start of the line
vim.api.nvim_set_keymap("n", "<Tab>", ">>", { noremap = true, silent = true })
-- press shift tab in normal mode and actually untab the start of the line
vim.api.nvim_set_keymap("n", "<S-Tab>", "<<", { noremap = true, silent = true })
-- press leader o to inssrt new line and keep normal mode and leader shift to insert line on top
vim.api.nvim_set_keymap("n", "<leader>o", "o<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>O", "O<Esc>", { noremap = true, silent = true })
-- jj or kk in insert mode to escape
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kk", "<Esc>", { noremap = true, silent = true })
-- buffers
vim.keymap.set("n", "<leader>,", ":bn<cr>") -- next buffer
vim.keymap.set("n", "<leader>;", ":bp<cr>") -- previous buffer
vim.keymap.set("n", "<leader>x", ":bd<cr>") -- close buffer
-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- paste from clipboard
vim.keymap.set("n", "<leader>p", [["+p]])
-- Go out from terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
-- Save file using leader fs and also forma>")t it
vim.api.nvim_set_keymap('n', '<Leader>fs', ':lua FormatAndSave()<CR>',
  { noremap = true, silent = true, desc = 'Format and Save' })
-- Add current route as project root
vim.api.nvim_set_keymap('n', '<Leader>er', ':ProjectRoot',
  { noremap = true, silent = true, desc = 'Set as Project Root' })
