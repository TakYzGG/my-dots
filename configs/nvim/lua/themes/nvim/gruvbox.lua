-- Nombre del tema: gruvbox
local theme = {}

local colors = {
  bg = "#282828",
  fg = "#fbf1c7",
  cursor_line = "#3c3836",
  line_nr = "#d3869b",
  comment = "#83a598",
  constant = "#8ec07c",
  string = "#b8bb26",
  identifier = "#8ec07c",
  func = "#8ec07c",
  statement = "#fe8019",
  operator = "#d3869b",
  keyword = "#d3869b",
  preproc = "#fabd2f",
  type = "#fb4934",
  special = "#fe8019",
  underlined = "#8ec07c",
  todo_fg = "#fbf1c7",
  todo_bg = "#d3869b",
  error_fg = "#fb4934",
  warning_fg = "#fabd2f",
  info_fg = "#83a598",
  hint_fg = "#b8bb26",
  visual_bg = "#3c3836",
  status_fg = "#fbf1c7",
  status_bg = "#3c3836",
  status_nc_fg = "#d3869b",
  pmenu_bg = "#3c3836",
  pmenu_fg = "#fbf1c7",
  pmenu_sel_bg = "#83a598",
  pmenu_sel_fg = "#fbf1c7",
  diff_add = "#689d6a",
  diff_change = "#458588",
  diff_delete = "#cc241d",
  diff_text = "#d79921",
  vertsplit_fg = "#3c3836",
  tabline_bg = "#3c3836",
  tabline_fg = "#83a598",
  tabline_sel_bg = "#83a598",
  tabline_sel_fg = "#fbf1c7",
  tabline_fill_bg = "#282828",
  tabline_fill_fg = "#83a598",
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

  set_hl(0, "DiffAdd", { bg = colors.diff_add })
  set_hl(0, "DiffChange", { bg = colors.diff_change })
  set_hl(0, "DiffDelete", { bg = colors.diff_delete })
  set_hl(0, "DiffText", { bg = colors.diff_text })

  set_hl(0, "VertSplit", { fg = colors.vertsplit_fg })
  set_hl(0, "TabLine", { fg = colors.tabline_fg, bg = colors.tabline_bg })
  set_hl(0, "TabLineSel", { fg = colors.tabline_sel_fg, bg = colors.tabline_sel_bg })
  set_hl(0, "TabLineFill", { fg = colors.tabline_fill_fg, bg = colors.tabline_fill_bg })
end

return theme
