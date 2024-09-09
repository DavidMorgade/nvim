local telescope = require('morgade.plugins.telescope')
local builtin = require('telescope.builtin')

-- Define the path to the Copilot conversations directory
local copilot_conversations_path = vim.fn.expand("/home/morgade/.local/share/nvim/copilotchat_history")

-- Create a custom Telescope picker for Copilot conversations
function search_copilot_conversations()
  builtin.find_files({
    prompt_title = "Search Copilot Conversations",
    cwd = copilot_conversations_path,
    hidden = true
  })
end

-- Map the custom picker to a keybinding
vim.api.nvim_set_keymap('n', '<leader>sc', ':lua search_copilot_conversations()<CR>', { noremap = true, silent = true })
