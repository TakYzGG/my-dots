-- Usa vim.keymap.set() para mapear teclas
local map = vim.keymap.set

-- Quitar resaltado de busqueda
map("n", "<Esc>", ":nohlsearch<CR>", { noremap = true, silent = true })
