local M = {}

function M.setup()
  vim.cmd("set background=dark")
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "minimal"

  local highlights = {
    -- Colores básicos
    Normal = { fg = "#ffffff", bg = "#151515" },
    CursorLine = { bg = "#232323" },
    LineNr = { fg = "#474747", bg = "#151515" },
    Comment = { fg = "#474747" },
    Constant = { fg = "#2979ff" },
    String = { fg = "#00e676" },
    Identifier = { fg = "#00e5ff" },
    Function = { fg = "#00e5ff" },
    Statement = { fg = "#ff9100" },
    Operator = { fg = "#f50057" },
    Keyword = { fg = "#d500f9" },
    PreProc = { fg = "#ffea00" },
    Type = { fg = "#ff1744" },
    Special = { fg = "#ff9100" },
    Underlined = { fg = "#00e5ff" },
    Todo = { fg = "#ffffff", bg = "#d500f9" },

    -- Colores de diagnóstico
    Error = { fg = "#ff1744", bg = "#151515" },
    Warning = { fg = "#ffea00", bg = "#151515" },
    Info = { fg = "#2979ff", bg = "#151515" },
    Hint = { fg = "#00e676", bg = "#151515" },

    -- Fondo y texto alternativo
    Visual = { bg = "#232323" },
    StatusLine = { fg = "#ffffff", bg = "#232323" },
    StatusLineNC = { fg = "#474747", bg = "#151515" },
    Pmenu = { fg = "#ffffff", bg = "#232323" },
    PmenuSel = { fg = "#ffffff", bg = "#2979ff" },

    -- Otros colores
    VertSplit = { fg = "#232323" },
    TabLine = { fg = "#474747", bg = "#232323" },
    TabLineSel = { fg = "#ffffff", bg = "#2979ff" },
    TabLineFill = { fg = "#474747", bg = "#151515" },
  }

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
