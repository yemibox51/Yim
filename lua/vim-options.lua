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
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', {}) -- Copy Cursor
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y', {}) -- Copy Line
vim.keymap.set('n', '<leader>p', '"+p', {})        -- Paste After Cursor
vim.keymap.set('n', '<leader>P', '"+P', {})        -- Paste Before Cursor
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d', {}) -- Cut Cursor
vim.keymap.set({ 'n', 'v' }, '<leader>D', '"+D', {}) -- Cut Line

-- Find & Replace --
-- vim.keymap.set('n', '<leader>f', ':.,', {})  -- Replace to $/n in File
vim.keymap.set('n', '<leader>F', ':%s/', {}) -- Replace All in File

-- Tabs --
vim.keymap.set('n', '<leader>T', ':tabnew<CR>', {})
vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':tabprevious<CR>', { noremap = true, silent = true })

-- Terminal --
vim.keymap.set('t', '<C-w>', "<C-\\><C-n>", { noremap = true, silent = true })

-- Telescope -- 
vim.keymap.set('n', '<leader>tt', ':TodoTelescope<CR>', {})

-- Connect to Godot --
local gdproject = io.open(vim.fn.getcwd() .. "/project.godot", "r")
if gdproject then
    io.close(gdproject)
    if vim.fn.has 'win32' == 1 then
        vim.fn.serverstart("127.0.0.1:6004")
    else
        vim.fn.serverstart("./godothost")
    end
end
