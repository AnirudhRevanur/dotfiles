-- mappings to remove clipboard copy on delete
vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true })
vim.api.nvim_set_keymap("n", "dd", '"_dd', { noremap = true })
vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true })

-- moving lines up and down
vim.api.nvim_set_keymap("v", "mk", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "mj", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Incremental search with `n` and `N`
vim.api.nvim_set_keymap("n", "<C-n>", "/\\v", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-N>", "?\\v", { noremap = true })

-- Save the file
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true })

-- Save and quit
vim.api.nvim_set_keymap("n", "<C-q>", ":wq<CR>", { noremap = true })

-- Quit without saving
vim.api.nvim_set_keymap("n", "<C-c>", ":q!<CR>", { noremap = true })

-- Search current word
vim.api.nvim_set_keymap("n", "<leader>fw", "*", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>bw", "#", { noremap = true })

-- Center screen after search
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true })
