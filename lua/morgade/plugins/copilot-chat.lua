return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "main",
  dependencies = {
    { "github/copilot.vim" },    -- or github/copilot.vim
    { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
  },
  build = "make tiktoken",       -- Only on MacOS or Linux
  opts = {
    debug = true,                -- Enable debugging
    window = {
      layout = 'float',
      border = 'rounded',
      relative = 'editor',
      width = 0.75,
      height = 0.75,
    }
  },
  -- See Commands section for default commands if you want to lazy load on them
}
