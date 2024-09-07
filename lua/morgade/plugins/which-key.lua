return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    defaults = {
      ["<leader>t"] = { name = "+Toggle" },
      ["<leader>ta"] = { name = "+Toggle Ask Copilot" },
      ["<leader>g"] = { name = "+Go to" },
      ["<leader>f"] = { name = "+File " },
      ["<leader>s"] = { name = "+Telecope Search" },
      ["<leader>l"] = { name = "+LSP Commands" },
    },

  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end
}
