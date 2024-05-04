local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Catppuccin theme
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = { transparent_background = true  },
	},
	-- Telescope
    	{
	'nvim-telescope/telescope.nvim', tag = '0.1.6',
     	dependencies = { 'nvim-lua/plenary.nvim' }
	},
	-- Primeagen VimBeGood
	{'ThePrimeagen/vim-be-good'},
	-- File Tree
	{
    	"nvim-tree/nvim-tree.lua",
    	version = "*",
    	lazy = false,
    	requires = {
      		"nvim-tree/nvim-web-devicons",
    	},
    	config = function()
        require("nvim-tree").setup {
          sort = { sorter = "case_sensitive" },
          view = {
            width = 30,
            adaptive_size = true,
          },
          renderer = { group_empty = true },
          filters = { dotfiles = false },
        }
        end,
  	},
	-- Buffer not working on this vim version, only for the icons
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	-- Github copilot extensions
	{'github/copilot.vim'},
	{'terrortylor/nvim-comment',
	config = function()
		require("nvim_comment").setup({
			create_mappings = false,
		})
	end,
	},
})
