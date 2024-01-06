vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set expandtab")
vim.g.mapleader = " "

-- Resize Panes Faster --
vim.keymap.set('n', '<C-j>', ':resize +2<CR>', {})
vim.keymap.set('n', '<C-k>', ':resize -2<CR>', {})
vim.keymap.set('n', '<C-h>', ':vertical resize +2<CR>', {})
vim.keymap.set('n', '<C-l>', ':vertical resize -2<CR>', {})

-- Copy & Paste to Clipboard --
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', {}) -- Copy Cursor
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y', {}) -- Copy Line
vim.keymap.set('n', '<leader>p', '"+p', {}) -- Paste After Cursor
vim.keymap.set('n', '<leader>P', '"+P', {}) -- Paste Before Cursor
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d', {}) -- Cut Cursor
vim.keymap.set({'n', 'v'}, '<leader>D', '"+D', {}) -- Cut Line

-- Find & Replace -- 
vim.keymap.set('n', '<leader>f', ':.,', {}) -- Replace to $/n in File
vim.keymap.set('n', '<leader>F', ':%s/', {}) -- Replace All in File
