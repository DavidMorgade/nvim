local telescope = require('morgade.plugins.telescope')
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local copilot = require('CopilotChat')

-- Define the path to the Copilot conversations directory
local copilot_conversations_path = vim.fn.expand("/home/morgade/.local/share/nvim/copilotchat_history")

-- Custom action to open the selected file with Copilot Chat
local function open_with_copilot(prompt_bufnr)
  local selected_entry = action_state.get_selected_entry()
  local filepath = selected_entry.filename
  -- filename without .json extension
  local filename = string.sub(filepath, 1, -6)
  print("Selected file path: " .. (filename or "nil")) -- Debug print
  actions.close(prompt_bufnr)
  -- execute this lua command :lua CopilotChatLoad "path/to/file"
  vim.cmd("CopilotChatLoad " .. filename)
end

-- Create a custom Telescope picker for Copilot conversations
function search_copilot_conversations()
  builtin.find_files({
    prompt_title = "Search Copilot Conversations",
    cwd = copilot_conversations_path,
    hidden = true,
    attach_mappings = function(_, map)
      map('i', '<CR>', open_with_copilot)
      map('n', '<CR>', open_with_copilot)
      return true
    end
  })
end

-- Map the custom picker to a keybinding
vim.api.nvim_set_keymap('n', '<leader>sc', ':lua search_copilot_conversations()<CR>',
  { noremap = true, silent = true, desc = "[S]earch Copilot Conversations" })


-- quick copilot chat
function QuickChatCopilot()
  local input = vim.fn.input("Quick Chat: ")
  if input ~= "" then
    require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
  end
end

-- Define a key mapping to trigger the reformatting and saving

-- Function to perform formatting and saving
function FormatAndSave()
  -- Format the current buffer using LSP
  vim.lsp.buf.format()

  -- Save the current buffer
  vim.cmd('w')
end
