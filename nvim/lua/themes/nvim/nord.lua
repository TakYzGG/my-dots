local M = {}

function M.setup()
  vim.cmd("set background=dark")
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "nord"

  local highlights = {
    -- Colores básicos
    Normal = { fg = "#D8DEE9", bg = "#2E3440" },
    CursorLine = { bg = "#3B4252" },
    LineNr = { fg = "#4C566A", bg = "#2E3440" },
    Comment = { fg = "#616E88" },
    Constant = { fg = "#81A1C1" },
    String = { fg = "#A3BE8C" },
    Identifier = { fg = "#88C0D0" },
    Function = { fg = "#88C0D0" },
    Statement = { fg = "#EBCB8B" },
    Operator = { fg = "#BF616A" },
    Keyword = { fg = "#B48EAD" },
    PreProc = { fg = "#D08770" },
    Type = { fg = "#8FBCBB" },
    Special = { fg = "#EBCB8B" },
    Underlined = { fg = "#88C0D0" },
    Todo = { fg = "#ECEFF4", bg = "#B48EAD" },

    -- Colores de diagnóstico
    Error = { fg = "#BF616A", bg = "#2E3440" },
    Warning = { fg = "#EBCB8B", bg = "#2E3440" },
    Info = { fg = "#81A1C1", bg = "#2E3440" },
    Hint = { fg = "#A3BE8C", bg = "#2E3440" },

    -- Fondo y texto alternativo
    Visual = { bg = "#3B4252" },
    StatusLine = { fg = "#ECEFF4", bg = "#3B4252" },
    StatusLineNC = { fg = "#4C566A", bg = "#2E3440" },
    Pmenu = { fg = "#ECEFF4", bg = "#3B4252" },
    PmenuSel = { fg = "#ECEFF4", bg = "#81A1C1" },

    -- Otros colores
    VertSplit = { fg = "#3B4252" },
    TabLine = { fg = "#4C566A", bg = "#3B4252" },
    TabLineSel = { fg = "#ECEFF4", bg = "#81A1C1" },
    TabLineFill = { fg = "#4C566A", bg = "#2E3440" },
  }

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
