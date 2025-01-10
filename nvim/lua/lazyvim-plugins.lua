-- Lazy.vim
vim.opt.rtp:prepend("~/.config/nvim/lazy/lazy.nvim")

-- Lazy.vim | Plugins
require("lazy").setup({
  { "itchyny/lightline.vim" },
})

-- Plugins | Lightline
vim.g.lightline = { colorscheme = 'theme' }
