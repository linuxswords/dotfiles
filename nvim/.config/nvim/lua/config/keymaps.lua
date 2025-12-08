-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "tn", "<Esc>", { desc = "escape the colmak way" })
vim.keymap.set("i", "fj", "<Esc>", { desc = "escape the qwerty way" })

vim.keymap.set("n", "<leader>ww", ":w<Enter>", { desc = "write the current buffer" })
vim.keymap.set("n", "<leader>bw", ":w<Enter>", { desc = "write the current buffer" })

-- move lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in front when J-ing lines
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- replace word without refilling current buffer with the replaced thing
vim.keymap.set("x", "<leader>p", '"_dP')

-- make copy-pasting to clipboard great again :asbjornHaland/thePrimeagen
-- vim.keymap.set('n', '<leader>y', '"+y')
-- vim.keymap.set('v', '<leader>y', '"+y')
-- vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set(
  "n",
  "<leader>x",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word under cursor" }
)

vim.keymap.set(
  "x",
  "<leader>p",
  '"_dP',
  { desc = "replace word without refilling current buffer with the replaced thing" }
)
