-- this init.lua requires VimPlug (https://github.com/junegunn/vim-plug)

local Plug = vim.fn["plug#"]

-- hybrid line numbers ftw!
vim.api.nvim_win_set_option(0, "nu", true)
vim.api.nvim_win_set_option(0, "rnu", true)

-------------------
----- PLUGINS -----
-------------------

vim.call("plug#begin")

Plug("tpope/vim-sensible")

-- tokyonight theme
Plug("folke/tokyonight.nvim")

-- NERDTree
Plug("preservim/nerdtree")

vim.call("plug#end")

-- set the theme
vim.cmd[[colorscheme tokyonight-day]]

---------------------
------ KEYBINDS -----
---------------------

-- unbind u key (having it be undo is annoying)
vim.api.nvim_set_keymap("n", "u", "<NOP>", { noremap = true, silent = true })

-- ctrl+w then ctrl+e to show buffers
-- the ":buffer<Space>" lets me type in a buffer number
-- and press enter to change buffers,
-- so that i dont have to type out ":buffer "
vim.api.nvim_set_keymap("n", "<C-e><C-w>", ":buffers<CR>:buffer<Space>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-e>j", ":bprev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-e>k", ":bnext<CR>", { noremap = true, silent = true })
