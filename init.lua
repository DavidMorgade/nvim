require("keymaps")
require("options")
require("plugins.lazy")
require("plugins.keymaps")
require("plugins.options")
require("plugins.toggleterm")



-- Save the state of the terminal
vim.cmd([[
    au VimLeave * lua require('toggleterm').close_all()
]])

-- Set autoclose
require("autoclose").setup()



