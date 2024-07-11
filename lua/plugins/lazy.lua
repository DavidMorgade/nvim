-- Install lazylazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)




require('lazy').setup({
  -- tpope surround
  { 'tpope/vim-surround' },
  --React syntax highlight
  { 'maxmellon/vim-jsx-pretty' },
  -- Prisma syntax highlight
  { 'prisma/vim-prisma' },
  -- Great start screen
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup({
        theme = 'hyper',
        config = {
          header = {
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⢟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⣼⣿⣣⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣾⣿⣿⡿⢟⣭⡿⠋⣠⣿⣿⣿⣿⣿⠟⣡⣾⣿⣷⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠷⠋⢁⣤⣿⡿⣛⣿⡿⠋⠀⣰⣿⣿⣿⣿⣿⣿⡿⢹⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠉⢁⣠⣾⠿⣛⣽⡾⠟⠉⠀⢀⣼⣿⣿⣿⣿⣿⣿⠏⠀⠘⡄⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⢀⣾⣏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⡶⢾⣿⣯⣶⡿⠛⠁⠀⠀⠀⣴⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⡇⠀⠀⠀⠀⠀",
            "⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠈⢰⡞⠛⠯⠉⠙⢷⠀⠀⠀⣠⣾⣿⣿⣿⣿⡿⠟⠓⠦⢄⡀⠀⠀⢱⠀⠀⠀⠀⠀",
            "⠀⠀⢠⣿⡏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⣿⣿⣷⣤⡀⠀⣀⣴⣿⣿⣿⣿⣿⠿⠛⠁⠐⠂⠀⠀⠈⠑⠢⠸⡄⠀⠀⠀⠀",
            "⠀⠀⣞⡟⢨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠘⠧⣒⣀⣻⣿⣷⣿⣹⣾⢟⣫⣵⡿⠟⠋⢡⢴⣶⣶⣤⣄⣀⡀⠀⠀⠀⠢⣽⡄⠀⠀⠀",
            "⠀⠀⣿⣷⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠻⣏⠀⠀⠀⠀⠀⠀⠈⣩⡽⠾⠟⠋⠁⠀⠀⠀⠀⢀⣿⣿⣿⣯⡿⠿⣦⣄⠀⣸⣿⣷⣄⠀⠀",
            "⡆⠀⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⡿⠀⠈⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⠁⠀⠀⠀⠀⠀⠀⠀⠉⠙⠪⣍⣢⣌⣻⣼⣿⡿⢋⣿⣦⡀",
            "⠹⡀⢹⣿⡏⣸⣿⡇⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣿⡿⠋⢠⣾⣿⣿⣷",
            "⠀⡇⠘⣿⡅⣿⣿⡇⣾⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⠿⠟⠁⢀⣴⡿⣿⣿⣿⣿",
            "⠀⢸⠀⢻⡿⠽⣿⣿⠹⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⠴⠋⠁⠀⣠⣶⣿⡿⢣⣿⣿⣿⣿",
            "⠀⠈⣑⡮⣷⠤⠽⠿⢧⣙⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠖⠛⢯⠞⢉⣠⣿⣿⣿⣿⣿",
            "⠀⠀⠁⡴⡇⠀⠀⡄⠀⠀⠉⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⣿⣭⣍⣉⠓⠒⠲⠤⢄⡀⠀⠀⠀⠀⠀⠀⠀⠄⠊⠁⣰⣿⣿⣿⣿⣿⣿⣿",
            "⠀⠀⡟⠀⡇⠀⡰⠿⣿⣟⣢⢼⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠘⣿⡿⠿⠿⣿⣶⣶⣦⣼⡷⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⢯⣿⣿⣿⣿⣿",
            "⠀⠀⠀⠀⠀⣼⠷⠚⠉⠈⠻⣿⣶⣭⣝⡿⢿⣿⣦⠀⠀⠀⠀⠈⠳⠤⣀⣀⣀⣠⠾⠋⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⠀⢰⠦⠒⡫⠀⠀⣀⢴⡨⠗⠚⢻⣿⣿⣿⣷⣶⣭⣗⡢⠤⣀⣀⠀⠲⠤⠤⠤⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⢟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⠀⢸⠀⠰⠁⣤⠾⠋⠁⠀⠀⠀⠀⠹⣍⣿⣷⣯⣝⡻⠿⣕⣲⣤⢭⣉⣉⣒⠒⠤⠀⣠⣀⣤⣾⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿",
            "⢀⡇⠀⣴⢫⡁⠀⠀⣀⡴⠞⠛⠉⠉⢿⢿⣿⠻⣍⠙⠱⣦⣬⣙⡻⠿⣿⣿⣿⣿⣿⣿⣿⣖⣦⠤⢴⣶⣾⣿⠟⠟⢉⣼⣿⡿⢸⣿⣿⣿",
            "⣾⡇⠀⢻⡄⢙⠛⠋⠁⠀⠀⠀⢀⡄⠸⣷⣯⣳⢤⣉⡒⠦⣝⡛⠿⣛⣶⣶⣶⣤⡄⠠⠤⠤⠴⣶⣿⣿⣿⠏⢀⣤⣾⣿⣿⠃⣼⣿⣿⡿",
            "⣿⠹⠀⠀⡇⠘⡇⠀⠀⢤⣤⡶⠋⢀⣴⣿⣿⣿⡳⢮⣉⠓⠶⠍⠑⠒⠊⠉⠛⠒⠦⣤⣤⠴⠟⣉⣥⢏⣡⣶⣿⣿⡿⠛⣡⣾⣿⣿⣿⣿",
            "⣿⣇⠀⠀⠀⠀⢱⠀⠀⠀⠘⣇⣰⣿⣿⣟⢿⣿⣿⡷⢦⣝⣲⣶⣶⠦⢤⣤⡤⠤⠄⣠⣴⣾⠿⣫⣷⠟⢛⡋⠉⢀⡄⣼⣿⣿⣿⣿⣯⣵",
            "⣿⣿⠀⠀⠀⠀⠀⢧⡀⠀⠀⠘⣿⢸⣿⣿⣿⣝⢿⣯⡲⢶⣤⣭⣿⣛⡛⣉⣴⣾⡿⢟⣫⣴⣾⣟⣵⣾⣿⡏⢰⣿⣼⣿⣿⣿⣿⣾⠟⠋",
            "                                                  "

          }
          ,
          shortcut = {
            {
              desc = 'Show Lazy',
              group = 'Label',
              action = 'Lazy',
              key = 'l',
            },
            { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Files',
              group = 'Label',
              action = 'Telescope find_files',
              key = 'f',
            },
            {
              desc = '  Mason',
              group = 'Number',
              action = 'Mason',
              key = 'm',
            },
            {
              icon = ' ',
              desc = 'Search',
              group = '@property',
              action = 'Telescope live_grep',
              key = 's',
            },
            {
              icon = '洛',
              desc = 'Play Game',
              group = '@property',
              action = 'VimBeGood',
              key = 'g',
            },
            {
              icon = '洛',
              desc = 'Quit',
              group = 'Number',
              action = 'quit',
              key = 'q',
            }
          },
        },
      })
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },
  -- Color scheme
  {
    {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      opts = {
        term_colors = true,
        transparent_background = true,
        dim_inactive = {
          enabled = false,   -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          treesitter = true,
          harpoon = true,
          telescope = true,
          mason = true,
          noice = true,
          notify = true,
          which_key = true,
          fidget = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
            inlay_hints = {
              background = true,
            },
          },
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      },
      config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin-macchiato")
      end,
    }
  },
  -- Project create + telescope projects
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup {
        patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "Cargo.toml", "go.mod" },
        ignore_lsp = { "efm", "sumneko_lua", "tsserver" },
      }
    end,
    requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' }
  },

  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },

  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  -- autoclose brackerts
  { 'm4xshen/autoclose.nvim' },
  -- Save and load buffers (a session) automatically for each folder
  {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Downloads" },
      }
    end
  },

  -- Comment code
  {
    'terrortylor/nvim-comment',
    config = function()
      require("nvim_comment").setup({ create_mappings = false })
    end
  },

  -- Visualize buffers as tabs
  { 'akinsho/bufferline.nvim',    version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },

  --GithubCopilot
  { 'github/copilot.vim' },
  -- The Primeagen Vim be Good
  { 'ThePrimeagen/vim-be-good' },
  -- Terminal for neovim
  { 'akinsho/nvim-toggleterm.lua' },
  --Compile and run commands
  { -- This plugin
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim" },
    opts = {},
  },
  { -- The task runner we use
    "stevearc/overseer.nvim",
    commit = "68a2d344cea4a2e11acfb5690dc8ecd1a1ec0ce0",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1
      },
    },
  },

  -- wich key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      defaults = {
        ["<leader>t"] = { name = "+Toggle" },
        ["<leader>g"] = { name = "+Go to" },
        ["<leader>f"] = { name = "+File " },
        ["<leader>s"] = { name = "+Telecope Search" },
        ["<leader>l"] = { name = "+LSP Commands" },
      }
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults)
    end
  },
  -- LSP zero
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
    init = function()
      -- Disable automatic setup, we are doing it manually
      vim.g.lsp_zero_extend_cmp = 0
      vim.g.lsp_zero_extend_lspconfig = 0
    end,
  },
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = true,
  },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      { 'L3MON4D3/LuaSnip' },
    },
    config = function()
      -- Here is where you configure the autocompletion settings.
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_cmp()

      -- And you can configure cmp even more, if you want to.
      local cmp = require('cmp')
      local cmp_action = lsp_zero.cmp_action()

      cmp.setup({
        formatting = lsp_zero.cmp_format({ details = true }),
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
          ['<C-f>'] = cmp_action.luasnip_jump_forward(),
          ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        })
      })
    end
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'williamboman/mason-lspconfig.nvim' },
    },
    config = function()
      -- This is where all the LSP shenanigans will live
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_lspconfig()

      --- if you want to know more about lsp-zero and mason.nvim
      --- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
      lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps({ buffer = bufnr })
      end)

      require('mason-lspconfig').setup({
        ensure_installed = {
          'pyright',  -- python
          'tsserver', -- js, ts
        },
        handlers = {
          lsp_zero.default_setup,
          lua_ls = function()
            -- (Optional) Configure lua language server for neovim
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
          end,
        }
      })

      -- Python environment
      local util = require("lspconfig/util")
      local path = util.path
      require('lspconfig').pyright.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        before_init = function(_, config)
          default_venv_path = path.join(vim.env.HOME, "virtualenvs", "nvim-venv", "bin", "python")
          config.settings.python.pythonPath = default_venv_path
        end,
      }
    end
  }

})
