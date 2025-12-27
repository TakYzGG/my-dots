-- Opciones Básicas
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.clipboard = "unnamedplus"
vim.opt.linespace = 0
vim.opt.laststatus = 2
vim.opt.guicursor = "n-v-c:ver25,i-ci-ve:ver25,r-cr-o:ver25"
vim.opt.mouse = ""

-- No poner automaticamente el simbolo del comentario al precionar enter
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  command = "setlocal formatoptions-=r formatoptions-=o",
})

-- No crear archivos de respaldo
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Optimizaciones
vim.opt.lazyredraw = true
vim.opt.ttyfast = true
vim.opt.timeoutlen = 300
vim.opt.updatetime = 300
vim.opt.history = 100
