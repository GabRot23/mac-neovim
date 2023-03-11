local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup({
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<cr>', opts)      -- Find the symbol's definition
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga goto_definition<cr>', opts) -- Find the symbol's definition
vim.keymap.set('n', '<leader>sl', '<Cmd>Lspsaga show_line_diagnostics<cr>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<cr>', opts)
vim.keymap.set({ "n", "t" }, "<leader>t", "<cmd>Lspsaga term_toggle<CR>")
