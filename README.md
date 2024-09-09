### Plan

1. **Introduction**: Briefly describe the purpose of the Neovim configuration.
2. **Installation**: Provide steps to install the configuration.
3. **Key Bindings**: List and describe the key bindings.
4. **Plugins**: Mention any plugins used in the configuration.
5. **Customization**: Explain how to customize the configuration.

### Code

```markdown
# Neovim Configuration

This repository contains my personal Neovim configuration, optimized for efficiency and ease of use. Below are the key bindings and plugins used in this setup.

## Installation

1. Clone the repository to your Neovim configuration directory:
    ```sh
    git clone <repository-url> ~/.config/nvim
    ```

2. Install the required plugins using your preferred plugin manager (e.g., `vim-plug`, `packer.nvim`).

## Key Bindings

### General

- **Space Bar as Leader Key**: 
  ```lua
  vim.g.mapleader = " "
  ```

- **Tab and Shift-Tab for Indentation**:
  ```lua
  vim.api.nvim_set_keymap("n", "<Tab>", ">>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<S-Tab>", "<<", { noremap = true, silent = true })
  ```

- **Insert New Line in Normal Mode**:
  ```lua
  vim.api.nvim_set_keymap("n", "<leader>o", "o<Esc>", { noremap = true, silent = true, desc = "Insert Line Below" })
  vim.api.nvim_set_keymap("n", "<leader>O", "O<Esc>", { noremap = true, silent = true, desc = "Insert Line Above" })
  ```

- **Escape Insert Mode with `jj` or `kk`**:
  ```lua
  vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("i", "kk", "<Esc>", { noremap = true, silent = true })
  ```

### Buffer Management

- **Next Buffer**:
  ```lua
  vim.keymap.set("n", "<leader>,", ":bn<cr>")
  ```

- **Previous Buffer**:
  ```lua
  vim.keymap.set("n", "<leader>;", ":bp<cr>")
  ```

- **Close Buffer**:
  ```lua
  vim.keymap.set("n", "<leader>x", ":bd<cr>")
  ```

### Clipboard

- **Yank to Clipboard**:
  ```lua
  vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
  ```

- **Paste from Clipboard**:
  ```lua
  vim.keymap.set("n", "<leader>p", [["+p]], { desc = "Paste from Clipboard" })
  ```

### Terminal Mode

- **Exit Terminal Mode**:
  ```lua
  vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
  ```

### File Operations

- **Format and Save File**:
  ```lua
  vim.api.nvim_set_keymap('n', '<Leader>fs', ':lua FormatAndSave()<CR>', { noremap = true, silent = true, desc = 'Format and Save' })
  ```

- **Set Current Directory as Project Root**:
  ```lua
  vim.api.nvim_set_keymap('n', '<Leader>er', ':ProjectRoot', { noremap = true, silent = true, desc = 'Set as Project Root' })
  ```

### Telescope Integration

- **Find Files**:
  ```lua
  vim.keymap.set("n", "<leader>sf", ":Telescope find_files<cr>", { desc = 'Find Normal Files' })
  ```

- **Find Hidden Files**:
  ```lua
  vim.keymap.set("n", "<leader>sh", ":Telescope find_files find_command=rg,--ignore,--hidden,--files,-u<cr>", { desc = 'Find Hidden Files' })
  ```

- **Find Git Files**:
  ```lua
  vim.keymap.set("n", "<leader>sg", ":Telescope git_files<cr>", { desc = 'Find Git Files' })
  ```

- **Live Grep**:
  ```lua
  vim.keymap.set("n", "<leader>sw", ":Telescope live_grep<cr>", { desc = 'Find Word' })
  ```

- **Find Recent Files**:
  ```lua
  vim.keymap.set("n", "<leader>s.", ":Telescope oldfiles<cr>", { desc = 'Find Old Files' })
  ```

- **Find Projects**:
  ```lua
  vim.keymap.set("n", "<leader>sp", ":Telescope projects<cr>", { desc = 'Find Projects' })
  ```

### Toggle Features

- **Toggle File Explorer**:
  ```lua
  vim.keymap.set("n", "<leader>te", ":NvimTreeFindFileToggle<cr>", { noremap = true, silent = true, desc = "Toggle Explorer" })
  ```

- **Toggle Terminal**:
  ```lua
  vim.keymap.set("n", "<leader>tt", ":lua require('toggleterm').toggle()<cr>", { noremap = true, silent = true, desc = "Toggle Terminal" })
  vim.keymap.set("t", "<leader>tt", "<C-\\><C-n>:lua require('toggleterm').toggle()<cr>", { noremap = true, silent = true, desc = "Toggle Terminal" })
  ```

- **Toggle Comment**:
  ```lua
  vim.keymap.set({ "n", "v" }, "<leader>tc", ":CommentToggle<cr>", { desc = 'Comment Code' })
  ```

- **Toggle LSP Diagnostic Window**:
  ```lua
  vim.api.nvim_set_keymap('n', '<space>td', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true, desc = 'Toggle LSP Diagnostic Window' })
  ```

- **Toggle Compiler**:
  ```lua
  vim.api.nvim_set_keymap('n', '<leader>tgcc', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true, desc = 'Toggle Compiler' })
  ```

- **Start/Stop Live Server**:
  ```lua
  vim.api.nvim_set_keymap('n', '<leader>tls', ':LiveServerStart<cr>', { noremap = true, silent = true, desc = 'Start Live Server' })
  vim.api.nvim_set_keymap('n', '<leader>tlk', ':LiveServerStop<cr>', { noremap = true, silent = true, desc = 'Stop Live Server' })
  ```

### Copilot Integration

- **Toggle Copilot Chat**:
  ```lua
  vim.api.nvim_set_keymap('n', '<leader>tat', ':CopilotChatToggle<cr>', { noremap = true, silent = true, desc = 'Toggle Copilot Chat' })
  ```

- **Open/Close Copilot Chat**:
  ```lua
  vim.api.nvim_set_keymap('n', '<leader>tao', ':CopilotChatOpen<cr>', { noremap = true, silent = true, desc = 'Open Copilot Chat' })
  vim.api.nvim_set_keymap('n', '<leader>tac', ':CopilotChatClose<cr>', { noremap = true, silent = true, desc = 'Close Copilot Chat' })
  ```

- **Reset Copilot Chat**:
  ```lua
  vim.api.nvim_set_keymap('n', '<leader>tar', ':CopilotChatReset<cr>', { noremap = true, silent = true, desc = 'Reset Copilot Chat' })
  ```

- **Save/Load Copilot Chat**:
  ```lua
  vim.api.nvim_set_keymap('n', '<leader>tas', ':CopilotChatSave ', { noremap = true, silent = true, desc = 'Save Copilot Chat' })
  vim.api.nvim_set_keymap('n', '<leader>tal', ':CopilotChatLoad ', { noremap = true, silent = true, desc = 'Load Copilot Chat' })
  ```

- **Add Docs to Copilot Chat**:
  ```lua
  vim.api.nvim_set_keymap('v', '<leader>taa', ':CopilotChatDocs<cr>', { noremap = true, silent = true, desc = 'Add Docs to Copilot Chat' })
  ```

- **Optimize Copilot Chat**:
  ```lua
  vim.api.nvim_set_keymap('v', '<leader>tao', ':CopilotChatOptimize<cr>', { noremap = true, silent = true, desc = 'Optimize Copilot Chat' })
  ```

- **Add Test to Copilot Chat**:
  ```lua
  vim.api.nvim_set_keymap('v', '<leader>tat', ':CopilotChatTest<cr>', { noremap = true, silent = true, desc = 'Add Test to Copilot Chat' })
  ```

- **Review Copilot Chat**:
  ```lua
  vim.api.nvim_set_keymap('v', '<leader>tar', ':CopilotChatReview<cr>', { noremap = true, silent = true, desc = 'Review Copilot Chat' })
  ```

- **Quick Chat Copilot on Buffer**:
  ```lua
  vim.api.nvim_set_keymap('n', '<leader>tab', ':lua QuickChatCopilot()<cr>', { noremap = true, silent = true, desc = 'Quick Chat Copilot on Buffer' })
  ```

### LSP Key Bindings

- **Go to Definition**:
  ```lua
  vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = 'Go to Definition' })
  ```

- **Go to Type Definition**:
  ```lua
  vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition, { desc = 'Go to Type Definition' })
  ```

- **Go to Implementation**:
  ```lua
  vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, { desc = 'Go to Implementation' })
  ```

- **Find References**:
  ```lua
  vim.keymap.set("n", "<leader>lm", ":Telescope lsp_references<cr>", { desc = 'Go to References' })
  ```

- **Rename Symbol**:
  ```lua
  vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = 'Rename Everywhere' })
  ```

- **Next/Previous Diagnostic**:
  ```lua
  vim.keymap.set("n", "<leader>ln", ":lua vim.diagnostic.goto_next()<cr>", { desc = 'Go to Next Diagnostic' })
  vim.keymap.set("n", "<leader>lp", ":lua vim.diagnostic.goto_prev()<cr>", { desc = 'Go to Previous Diagnostic' })
  ```

- **Show Hover Information**:
  ```lua
  vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = 'Show Hover Information' })
  ```

- **Show Signature Help**:
  ```lua
  vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help, { desc = 'Show Signature Help' })
  ```

- **Show Diagnostics**:
  ```lua
  vim.keymap.set("n", "<leader>ld", ":lua vim.diagnostic.open_float()<cr>", { desc = 'Show Diagnostics' })
  ```

## Plugins

- **Telescope**: Fuzzy finder and more.
- **Nvim-Tree**: File explorer.
- **ToggleTerm**: Terminal management.
- **Comment.nvim**: Easy commenting.
- **Live Server**: Live server for web development.
- **Copilot**: AI-powered code completion and chat.

## Customization

Feel free to customize the key bindings and plugins to suit your workflow. The configuration is designed to be easily extendable and modifiable.

---

For any issues or suggestions, please open an issue or submit a pull request.
`
