-- Nombre del tema: Dracula
local theme = {}

local colors = {
  bg = "#282a36",
  fg = "#f8f8f2",
  cursor_line = "#44475a",
  line_nr = "#bd93f9",
  comment = "#6272a4",
  constant = "#8be9fd",
  string = "#50fa7b",
  identifier = "#8be9fd",
  func = "#8be9fd",
  statement = "#ffb86c",
  operator = "#ff79c6",
  keyword = "#bd93f9",
  preproc = "#f1fa8c",
  type = "#ff5555",
  special = "#ffb86c",
  underlined = "#8be9fd",
  todo_fg = "#f8f8f2",
  todo_bg = "#bd93f9",
  error_fg = "#ff5555",
  warning_fg = "#f1fa8c",
  info_fg = "#6272a4",
  hint_fg = "#50fa7b",
  visual_bg = "#44475a",
  status_fg = "#f8f8f2",
  status_bg = "#44475a",
  status_nc_fg = "#bd93f9",
  pmenu_bg = "#44475a",
  pmenu_fg = "#f8f8f2",
  pmenu_sel_bg = "#6272a4",
  pmenu_sel_fg = "#f8f8f2",
  vertsplit_fg = "#44475a",
  tabline_bg = "#44475a",
  tabline_fg = "#6272a4",
  tabline_sel_bg = "#6272a4",
  tabline_sel_fg = "#f8f8f2",
  tabline_fill_bg = "#282a36",
  tabline_fill_fg = "#6272a4",
}

function theme.setup()
  local set_hl = vim.api.nvim_set_hl

  set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
  set_hl(0, "CursorLine", { bg = colors.cursor_line })
  set_hl(0, "LineNr", { fg = colors.line_nr, bg = colors.bg })
  set_hl(0, "Comment", { fg = colors.comment })
  set_hl(0, "Constant", { fg = colors.constant })
  set_hl(0, "String", { fg = colors.string })
  set_hl(0, "Identifier", { fg = colors.identifier })
  set_hl(0, "Function", { fg = colors.func })
  set_hl(0, "Statement", { fg = colors.statement })
  set_hl(0, "Operator", { fg = colors.operator })
  set_hl(0, "Keyword", { fg = colors.keyword })
  set_hl(0, "PreProc", { fg = colors.preproc })
  set_hl(0, "Type", { fg = colors.type })
  set_hl(0, "Special", { fg = colors.special })
  set_hl(0, "Underlined", { fg = colors.underlined })
  set_hl(0, "Todo", { fg = colors.todo_fg, bg = colors.todo_bg })

  set_hl(0, "Error", { fg = colors.error_fg, bg = colors.bg })
  set_hl(0, "Warning", { fg = colors.warning_fg, bg = colors.bg })
  set_hl(0, "Info", { fg = colors.info_fg, bg = colors.bg })
  set_hl(0, "Hint", { fg = colors.hint_fg, bg = colors.bg })

  set_hl(0, "Visual", { bg = colors.visual_bg })
  set_hl(0, "StatusLine", { fg = colors.status_fg, bg = colors.status_bg })
  set_hl(0, "StatusLineNC", { fg = colors.status_nc_fg, bg = colors.bg })
  set_hl(0, "Pmenu", { fg = colors.pmenu_fg, bg = colors.pmenu_bg })
  set_hl(0, "PmenuSel", { fg = colors.pmenu_sel_fg, bg = colors.pmenu_sel_bg })

  set_hl(0, "VertSplit", { fg = colors.vertsplit_fg })
  set_hl(0, "TabLine", { fg = colors.tabline_fg, bg = colors.tabline_bg })
  set_hl(0, "TabLineSel", { fg = colors.tabline_sel_fg, bg = colors.tabline_sel_bg })
  set_hl(0, "TabLineFill", { fg = colors.tabline_fill_fg, bg = colors.tabline_fill_bg })
end

return theme
