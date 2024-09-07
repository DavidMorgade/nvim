return {
  'ahmedkhalf/project.nvim',
  config = function()
    require('project_nvim').setup {
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "Cargo.toml", "go.mod" },
      ignore_lsp = { "efm", "sumneko_lua", "tsserver" },
    }
  end,
  requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' }
}
