local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<A-Left>", "<C-w>h", opts)
keymap("n", "<A-Down>", "<C-w>j", opts)
keymap("n", "<A-Up>", "<C-w>k", opts)
keymap("n", "<A-Right>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-A-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-A-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-A-Right>", ":vertical resize +2<CR>", opts)

-- Manage buffers
keymap("n", "<C-n>", ":tabnew<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", opts)
-- keymap("n", "<C-w>", "") -- find a way to close a tab

-- Navigate buffers
keymap("n", "<C-PageDown>", ":bnext<CR>", opts)
keymap("n", "<C-PageUp>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)
keymap("n", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)

-- Remap Cut, Copy and paste keys
keymap("n", "<C-v>", "p", opts)
keymap("n", "<C-x>", "dd", opts)
keymap("n", "<C-c>", "yy", opts)

-- Undo, Redo
keymap("n", "<C-z>", "u", opts)
keymap("n", "<A-z>", "<C-r>", opts)


-- Selection
keymap("n", "<S-Up>", "vk", opts)
keymap("n", "<S-Down>", "vj", opts)
keymap("n", "<S-Left>", "vh", opts)
keymap("n", "<S-Right>", "vl", opts)
keymap("n", "<C-S-Right>", "ve", opts)
keymap("n", "<C-S-Left>", "vb", opts)
keymap("n", "<C-a>", "gg<S-v><S-g>", opts)

-- Insert --
-- Press jk fast to exit insert mode 
-- keymap("i", "jk", "<ESC>", opts)
-- keymap("i", "kj", "<ESC>", opts)

-- Remap Cut, Copy and Paste keys
keymap("i", "<C-v>", "<C-O>p", opts)
keymap("i", "<C-x>", "<C-O>dd", opts)
keymap("i", "<C-c>", "<C-O>yy", opts)

-- Undo, Redo but stay in insert mode
keymap("i", "<C-z>", "<C-O>u", opts)
keymap("i", "<A-z>", "<C-O><C-r>", opts)

-- Move text up and down
keymap("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)
keymap("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)

-- Selection when in insert mode --
keymap("i", "<S-Up>", "<C-O>vk", opts)
keymap("i", "<S-Down>", "<C-O>vj", opts)
keymap("i", "<S-Right>", "<C-O>vl", opts)
keymap("i", "<S-Left>", "<C-O>vh", opts)
keymap("i", "<C-S-Right>", "<C-O>ve", opts)
keymap("i", "<C-S-Left>", "<C-O>vb", opts)
keymap("i", "<C-a>", "<Esc>gg<S-v><S-g>", opts)

-- Navigate buffers
keymap("i", "<C-PageDown>", "<ESC>:bnext<CR>", opts)
keymap("i", "<C-PageUp>", "<ESC>:bprevious<CR>", opts)

-- Manage buffers
keymap("i", "<C-n>", "<Esc>:tabnew<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
keymap("v", "<A-Up>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Selection when in visual mode
keymap("v", "<S-Up>", "k", opts)
keymap("v", "<S-Down>", "j", opts)
keymap("v", "<S-Right>", "l", opts)
keymap("v", "<S-Left>", "h", opts)
keymap("v", "<C-S-Right>", "e", opts)
keymap("v", "<C-S-Left>", "b", opts)
-- keymap("v", "<C-a>", "<Esc>gg<S-v><S-g>", opts)

-- Copy, Cut in visual mode
keymap("v", "<C-x>", "d", opts)
keymap("v", "<C-c>", "y", opts)
keymap("v", "<C-v>", '"_dP', opts)

-- Block rewrite in visual mode
keymap("v", "<BS>", '"_d', opts)
keymap("v", "<Del>", '"_d', opts)

-- Navigate buffers
keymap("v", "<C-PageDown>", "<ESC>:bnext<CR>", opts)
keymap("v", "<C-PageUp>", "<ESC>:bprevious<CR>", opts)



-- Visual Block --
-- Move text up and down
keymap("x", "S-Down", ":move '>+1<CR>gv-gv", opts)
keymap("x", "S-Up", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

