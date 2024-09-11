-- space bar leader key
vim.g.mapleader = " "
-- press tab in normal mode and actually tab the start of the line
vim.api.nvim_set_keymap("n", "<Tab>", ">>", { noremap = true, silent = true })
-- press shift tab in normal mode and actually untab the start of the line
vim.api.nvim_set_keymap("n", "<S-Tab>", "<<", { noremap = true, silent = true })
-- press leader o to inssrt new line and keep normal mode and leader shift to insert line on top
vim.api.nvim_set_keymap("n", "<leader>o", "o<Esc>", { noremap = true, silent = true, desc = "Insert Line Below" })
vim.api.nvim_set_keymap("n", "<leader>O", "O<Esc>", { noremap = true, silent = true, desc = "Insert Line Above" })
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
vim.keymap.set("n", "<leader>p", [["+p]], { desc = "Paste from Clipboard" })
-- Go out from terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
-- Save file using leader fs and also forma>")t it
vim.api.nvim_set_keymap('n', '<Leader>fs', ':lua FormatAndSave()<CR>',
  { noremap = true, silent = true, desc = 'Format and Save' })
-- Add current route as project root
vim.api.nvim_set_keymap('n', '<Leader>er', ':ProjectRoot',
  { noremap = true, silent = true, desc = 'Set as Project Root' })
-- Opens file on telescope on vsplit window
vim.api.nvim_set_keymap('n', '<Leader>tvs', ':vsplit<CR>',
  { noremap = true, silent = true, desc = 'Toggle Vertical Split' })

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Telescope search keybinds
vim.keymap.set("n", "<leader>sf", ":Telescope find_files<cr>", { desc = 'Find Normal Files' })
-- Add this on a vim keybind Telescope find_files find_command=rg,--ignore,--hidden,--files,-u
vim.keymap.set("n", "<leader>sh", ":Telescope find_files find_command=rg,--ignore,--hidden,--files,-u<cr>",
  { desc = 'Find Normal Files' })
vim.keymap.set("n", "<leader>sg", ":Telescope git_files<cr>", { desc = 'Find Git Files' })
vim.keymap.set("n", "<leader>sw", ":Telescope live_grep<cr>", { desc = 'Find Word' })
vim.keymap.set("n", "<leader>s.", ":Telescope oldfiles<cr>", { desc = 'Find Old Files' })
-- Search projects with telescope and open them with nvim-tree
vim.keymap.set("n", "<leader>sp", ":Telescope projects<cr>", { desc = 'Find Projects' })

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
-- toggle zen mode
vim.api.nvim_set_keymap('n', '<leader>tz', ':ZenMode<cr>',
  { noremap = true, silent = true, desc = 'Toggle Zen Mode' })
-- toggle compiler "tgcc"
vim.api.nvim_set_keymap('n', '<leader>tgcc', "<cmd>CompilerOpen<cr>",
  { noremap = true, silent = true, desc = 'Toggle Compiler' })
-- start live server
vim.api.nvim_set_keymap('n', '<leader>tls', ':LiveServerStart<cr>',
  { noremap = true, silent = true, desc = 'Start Live Server' })
-- stop live server
vim.api.nvim_set_keymap('n', '<leader>tlk', ':LiveServerStop<cr>',
  { noremap = true, silent = true, desc = 'Stop Live Server' })
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------CHAT COPILOT-----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Toggle Copilot Chat
vim.api.nvim_set_keymap('n', '<leader>tat', ':CopilotChatToggle<cr>',
  { noremap = true, silent = true, desc = 'Toggle Copilot Chat' })
-- Copilot chat open
vim.api.nvim_set_keymap('n', '<leader>tao', ':CopilotChatOpen<cr>',
  { noremap = true, silent = true, desc = 'Open Copilot Chat' })
-- Copilot chat close
vim.api.nvim_set_keymap('n', '<leader>tac', ':CopilotChatClose<cr>',
  { noremap = true, silent = true, desc = 'Close Copilot Chat' })
-- Copilot Chat Reset
vim.api.nvim_set_keymap('n', '<leader>tar', ':CopilotChatReset<cr>',
  { noremap = true, silent = true, desc = 'Reset Copilot Chat' })
-- Copilot Save Chat
vim.api.nvim_set_keymap('n', '<leader>tas', ':CopilotChatSave ',
  { noremap = true, silent = true, desc = 'Save Copilot Chat' })
-- Copilot load Chat
vim.api.nvim_set_keymap('n', '<leader>tal', ':CopilotChatLoad ',
  { noremap = true, silent = true, desc = 'Load Copilot Chat' })
-- Copilot add docs
vim.api.nvim_set_keymap('v', '<leader>taa', ':CopilotChatDocs<cr>',
  { noremap = true, silent = true, desc = 'Add Docs to Copilot Chat' })
-- Copilot chat optimize
vim.api.nvim_set_keymap('v', '<leader>tao', ':CopilotChatOptimize<cr>',
  { noremap = true, silent = true, desc = 'Optimize Copilot Chat' })
-- Copilot add test
vim.api.nvim_set_keymap('v', '<leader>tat', ':CopilotChatTest<cr>',
  { noremap = true, silent = true, desc = 'Add Test to Copilot Chat' })
-- Copilot chat review
vim.api.nvim_set_keymap('v', '<leader>tar', ':CopilotChatReview<cr>',
  { noremap = true, silent = true, desc = 'Review Copilot Chat' })
-- QuickCHat bufer copilot
vim.api.nvim_set_keymap('n', '<leader>tab', ':lua QuickChatCopilot()<cr>',
  { noremap = true, silent = true, desc = 'Quick Chat Copilot on Buffer' })


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- File Keybinds
-- Format file
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = 'Format File' })

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Go to utilities
-- Go dashboard
vim.keymap.set("n", "<leader>gd", ":Dashboard<cr>", { desc = 'Go to Dashboard' })
-- Go to mason
vim.keymap.set("n", "<leader>gm", ":Mason<cr>", { desc = 'Go to Mason' })

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

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---
-- LSP Keybinds
-- Go to definition
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = 'Go to Definition' })
-- Go to type definition
vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition, { desc = 'Go to Type Definition' })
-- Go to implementation
vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, { desc = 'Go to Implementation' })
-- Go to references with telescope
vim.keymap.set("n", "<leader>lm", ":Telescope lsp_references<cr>", { desc = 'Go to References' })
-- Rename everywhere
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = 'Rename Everywhere' })
-- Go to next diagnostic
vim.keymap.set("n", "<leader>ln", ":lua vim.diagnostic.goto_next()<cr>", { desc = 'Go to Next Diagnostic' })
-- Go to previous diagnostic
vim.keymap.set("n", "<leader>lp", ":lua vim.diagnostic.goto_prev()<cr>", { desc = 'Go to Previous Diagnostic' })
-- Show hover information
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = 'Show Hover Information' })
-- Show signature help
vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help, { desc = 'Show Signature Help' })
-- Show diagnostics
vim.keymap.set("n", "<leader>ld", ":lua vim.diagnostic.open_float()<cr>", { desc = 'Show Diagnostics' })
