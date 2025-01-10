local M = {}

function M.setup()
  vim.cmd("set background=dark")
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "onedark"

  local highlights = {
    -- Colores básicos
    Normal = { fg = "#abb2bf", bg = "#282c34" },
    CursorLine = { bg = "#4b5263" },
    LineNr = { fg = "#5c6370", bg = "#282c34" },
    Comment = { fg = "#5c6370" },
    Constant = { fg = "#61afef" },
    String = { fg = "#98c379" },
    Identifier = { fg = "#61afef" },
    Function = { fg = "#61afef" },
    Statement = { fg = "#ffb86c" },
    Operator = { fg = "#c678dd" },
    Keyword = { fg = "#c678dd" },
    PreProc = { fg = "#e5c07b" },
    Type = { fg = "#e06c75" },
    Special = { fg = "#ffb86c" },
    Underlined = { fg = "#61afef" },
    Todo = { fg = "#abb2bf", bg = "#c678dd" },

    -- Colores de diagnóstico
    Error = { fg = "#e06c75", bg = "#282c34" },
    Warning = { fg = "#e5c07b", bg = "#282c34" },
    Info = { fg = "#61afef", bg = "#282c34" },
    Hint = { fg = "#98c379", bg = "#282c34" },

    -- Fondo y texto alternativo
    Visual = { bg = "#4b5263" },
    StatusLine = { fg = "#abb2bf", bg = "#4b5263" },
    StatusLineNC = { fg = "#5c6370", bg = "#282c34" },
    Pmenu = { fg = "#abb2bf", bg = "#4b5263" },
    PmenuSel = { fg = "#abb2bf", bg = "#61afef" },

    -- Colores adicionales (alternativos)
    DiffAdd = { bg = "#31383a" },
    DiffChange = { bg = "#2d3643" },
    DiffDelete = { bg = "#373039" },
    DiffText = { bg = "#37373a" },

    -- Sombras
    VertSplit = { fg = "#5c6370" },
    TabLine = { fg = "#5c6370", bg = "#4b5263" },
    TabLineSel = { fg = "#abb2bf", bg = "#61afef" },
    TabLineFill = { fg = "#5c6370", bg = "#282c34" },
  }

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
