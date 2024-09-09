return {
  'akinsho/nvim-toggleterm.lua',
  version = "*",
  opts = {
    open_mapping = [[<c-j>]],
    title_pos = 'center',
    direction = 'float',
    float_opts = {
      width = function(_term)
        local width = math.ceil(vim.o.columns / 2) + 20
        _term.float_opts.col = math.ceil((vim.o.columns - width) / 2)
        return width
      end,
      height = function(_term)
        local height = math.ceil(vim.o.lines / 2) - 10
        _term.float_opts.row = vim.o.lines - height
        return height
      end,
    }
  }
}
