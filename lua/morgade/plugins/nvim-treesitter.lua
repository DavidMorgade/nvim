return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'lua', 'go', 'vim', 'regex', 'bash', 'markdown', 'markdown_inline' },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    }
  end,
}
