local keymap = vim.keymap

vim.g.mapleader = " "
keymap.set('i', 'jj', '<Esc>', { noremap = true })
keymap.set('n', '<leader>pv', vim.cmd.Ex)
keymap.set('i', 'jk', '<Esc>la')
keymap.set('i', 'jh', '<Esc>ha')

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
