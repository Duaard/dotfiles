-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader>fG", LazyVim.pick("files", { no_ignore = true }), { desc = "Find files (no ignore)" })
map("n", "<leader>fC", '<cmd>let @+ = expand("%:p")<CR>', { desc = "Copy file path" })
map("n", "<leader>fD", '<cmd>let @+ = expand("%:p:h")<CR>', { desc = "Copy file directory" })

-- Window navigation with arrow keys
map("n", "<leader>w<Left>", "<C-w>h", { desc = "Go to Left Window" })
map("n", "<leader>w<Down>", "<C-w>j", { desc = "Go to Lower Window" })
map("n", "<leader>w<Up>", "<C-w>k", { desc = "Go to Upper Window" })
map("n", "<leader>w<Right>", "<C-w>l", { desc = "Go to Right Window" })
