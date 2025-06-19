local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Normal mode
keymap.set('n', '<Up>', '<nop>', opts)
keymap.set('n', '<Down>', '<nop>', opts)
keymap.set('n', '<Left>', '<nop>', opts)
keymap.set('n', '<Right>', '<nop>', opts)

-- Insert mode
keymap.set('i', '<Up>', '<nop>', opts)
keymap.set('i', '<Down>', '<nop>', opts)
keymap.set('i', '<Left>', '<nop>', opts)
keymap.set('i', '<Right>', '<nop>', opts)

-- Visual mode
keymap.set('v', '<Up>', '<nop>', opts)
keymap.set('v', '<Down>', '<nop>', opts)
keymap.set('v', '<Left>', '<nop>', opts)
keymap.set('v', '<Right>', '<nop>', opts)

keymap.set("i", "jj", "<Esc>", opts)

keymap.set({"n", "v"}, "H", "^")
keymap.set({"n", "v"}, "L", "$")
keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Delete without yanking
keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
keymap.set("n", "--", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)
keymap.set("n", "<Leader>r", ":NvimTreeRefresh<Return>", opts)
keymap.set("n", "<Leader>b", "<C-w>w", opts)


-- Tabs
keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })
-- keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "vv", ":vsplit<Return>", opts)

-- -- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

