vim.opt.nu = true             -- enable line numbers
vim.opt.relativenumber = true -- relative line numbers

vim.opt.tabstop = 4           -- number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4        -- number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true      -- use spaces instead of tabs
vim.opt.smartindent = true    -- insert indents automatically
vim.opt.autoindent = true     -- copy indent from current line when starting a new line
vim.opt.list = true           -- show some invisible characters (tabs...)

vim.opt.ignorecase = true     -- ignore case in search patterns
vim.opt.smartcase = true      -- override the 'ignorecase' option if the search pattern contains upper case characters

vim.opt.hlsearch = false      -- highlight search results
vim.opt.incsearch = true      -- show search results as you type



vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.js", "*.html", "*.css", "*.lua" },
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
  end
}) -- javascript formatting


--lsp for C
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*.c",
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
  end
}) -- C formatting
