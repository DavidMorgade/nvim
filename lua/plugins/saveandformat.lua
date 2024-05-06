-- Define a key mapping to trigger the reformatting and saving

-- Function to perform formatting and saving
function FormatAndSave()
  -- Format the current buffer using LSP
  vim.lsp.buf.format()

  -- Save the current buffer
  vim.cmd('w')
end
