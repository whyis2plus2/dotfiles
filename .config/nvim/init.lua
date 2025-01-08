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

vim.call("plug#end")

-- set the theme
vim.cmd[[silent colorscheme tokyonight]]

---------------------
------ KEYBINDS -----
---------------------

-- unbind u key (having it be undo is annoying)
vim.api.nvim_set_keymap("n", "u", "<NOP>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-w><Space>", ":buffers<CR>:buffer<Space>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-w>[", ":bprev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>]", ":bnext<CR>", { noremap = true, silent = true })
