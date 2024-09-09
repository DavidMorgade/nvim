return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  requires = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      view = {
        width = 40,
        side = "left",
      },
      filters = {
        dotfiles = false,
      },
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true
      },
    }
  end,
}
