-- Key Mappings
local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Switch buffer
keymap("n", "<C-Left>", ":bprevious<CR>", default_opts)
keymap("n", "<C-Right>", ":bnext<CR>", default_opts)
keymap("n", "<C-Up>", ":NvimTreeToggle<CR>", default_opts)
keymap("n", "<C-Down>", ":bdelete<CR>", default_opts)

keymap("n", "<C-PageUp>", "<cmd>lua vim.diagnostic.goto_prev()<CR>", default_opts)
keymap("n", "<C-PageDown>", "<cmd>lua vim.diagnostic.goto_next()<CR>", default_opts)


-- Clear search history after esc
keymap("n", "<Esc>", ":noh<CR><Esc>", default_opts)
