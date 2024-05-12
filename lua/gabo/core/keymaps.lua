vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Esc
keymap.set("i", "jk", "<Esc>", { desc = "Exits with jk" })

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Open Lazy
keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Open Lazy" })

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>p", '"0p')
keymap.set("n", "<leader>P", '"0P')
keymap.set("v", "<leader>p", '"0p')
keymap.set("n", "<leader>c", '"_c')
keymap.set("n", "<leader>C", '"_C')
keymap.set("v", "<leader>c", '"_c')
keymap.set("v", "<leader>C", '"_C')
keymap.set("n", "<leader>d", '"_d')
keymap.set("n", "<leader>D", '"_D')
keymap.set("v", "<leader>d", '"_d')
keymap.set("v", "<leader>D", '"_D')

-- Increment/decrement
keymap.set("n", "+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "-", "<C-x>", { desc = "Decremet number" }) -- decrement

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d', { desc = "Delete a word backwards" })

-- From theprimeagen
-- keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "To enter file explore" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlight file UP" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlight file DOWN" })

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Select all
-- keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Disable continuations
keymap.set("n", "<leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- -- New tab
-- keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- TABS
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<s-tab>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew<CR>", { desc = "Open current buffer in new tab" })

-- WINDOWS
-- Split window
keymap.set("n", "<leader>sh", ":split<Return>", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sv", ":vsplit<Return>", { desc = "Split window vertically" })
-- Close window
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current window" })
-- Move window
-- keymap.set("n", "sh", "<C-w>h", { desc = "Move window to the left" })
-- keymap.set("n", "sk", "<C-w>k", { desc = "Move windows up" })
-- keymap.set("n", "sj", "<C-w>j", { desc = "Move window down" })
-- keymap.set("n", "sl", "<C-w>l", { desc = "Move window to the right" })
-- Make split equal size
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })

-- Resize window
-- keymap.set("n", "<C-w><left>", "<C-w><")
-- keymap.set("n", "<C-w><right>", "<C-w>>")
-- keymap.set("n", "<C-w><up>", "<C-w>+")
-- keymap.set("n", "<C-w><down>", "<C-w>-")
