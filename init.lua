require("keymaps")
require("options")
require("plugins.lazy")
require("plugins.keymaps")
require("plugins.options")
require("plugins.toggleterm")
require("plugins.saveandformat")


-- Save the state of the terminal
vim.cmd([[
    au VimLeave * lua require('toggleterm').close_all()
]])

-- Set autoclose
require("autoclose").setup()

-- autocmd change directory to the current file

local api = vim.api
local fn = vim.fn

api.nvim_create_augroup("WorkingDirectory", { clear = true })
api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.*" },
  callback = function()
    local path = fn.expand('%:h') .. '/'
    path = "cd " .. path
    api.nvim_command(path)
  end,
  group = "WorkingDirectory",
})
