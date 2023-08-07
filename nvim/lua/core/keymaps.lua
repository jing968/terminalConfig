--- master key map

vim.g.mapleader = " "

local keymap = vim.keymap

--- INSERT MODE ---

--- NORMAL MODE ---
-- screen controls
keymap.set("n", "<leader>sv", "<C-w>v") -- new vertical screen
keymap.set("n", "<leader>sh", "<C-w>s") -- new horizontal screen
-- undo highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")
-- nvim -tree navigation
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


--- VISUAL MODE --
-- moving lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")



--- COMMAND MODE ---
