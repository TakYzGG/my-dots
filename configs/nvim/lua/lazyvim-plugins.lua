-- Lazy.vim
vim.opt.rtp:prepend("~/.config/nvim/lazy/lazy.nvim")

-- Lazy.vim | Plugins
require("lazy").setup({
    {'nvim-lualine/lualine.nvim',}
})

-- LuaLine --
require('lualine').setup {
    options = { theme = require('themes.lualine.theme'),
        section_separators = "",
        component_separators = "",
        icons_enabled = false,
    };
}
