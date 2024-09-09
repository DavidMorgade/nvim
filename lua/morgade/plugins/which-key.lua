return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init  = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts  = {
    preset = 'modern',
    win = {
      height = { min = 10, max = 40 },
      width = { min = 60, max = 100 },
      border = 'single',
    },
    layout = {
      width = { min = 20, max = 50 },
      spacing = 3,
    },
    icons = {
      -- set icon mappings to true if you have a Nerd Font
      mappings = vim.g.have_nerd_font,
      -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
      -- default whick-key.nvim defined Nerd Font icons, otherwise define a string table
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        -- C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },
    -- Document existing key chains with icons
    spec = {
      { '<leader>t', group = '[T]oggle', icon = '' }, -- Example icon
      { '<leader>f', group = '[F]ile', mode = { 'n', 'x' }, icon = '' }, -- Example icon
      { '<leader>s', group = '[S]earch with Telescope', icon = '' }, -- Example icon
      { '<leader>g', group = '[G]o to ...', icon = '' }, -- Example icon
      { '<leader>e', group = '[E]nemy Keys', icon = '' }, -- Example icon
      { '<leader>l', group = '[L]sp Utilities', icon = '' }, -- Example icon
    },
  }
}
