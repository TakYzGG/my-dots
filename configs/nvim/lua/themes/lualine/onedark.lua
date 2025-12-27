-- Theme: Onedark --

local colors = {
  bg      = "#5c6370",
  fg      = "#abb2bf",
  black   = "#282c34",
  gray    = "#5c6370",
  blue    = "#61afef",
  green   = "#98c379",
  yellow  = "#e5c07b",
  red     = "#e06c75",
  purple  = "#c678dd"
}

return {
  normal = {
    a = { fg = colors.black, bg = colors.green, gui = "bold" },
    b = { fg = colors.fg,    bg = colors.gray },
    c = { fg = colors.fg,    bg = colors.bg  },
  },

  insert = {
    a = { fg = colors.black, bg = colors.blue, gui = "bold" },
    b = { fg = colors.fg,    bg = colors.gray },
    c = { fg = colors.fg,    bg = colors.bg  },
  },

  visual = {
    a = { fg = colors.black, bg = colors.purple, gui = "bold" },
    b = { fg = colors.fg,    bg = colors.gray },
    c = { fg = colors.fg,    bg = colors.bg  },
  },

  replace = {
    a = { fg = colors.black, bg = colors.red, gui = "bold" },
    b = { fg = colors.fg,    bg = colors.gray },
    c = { fg = colors.fg,    bg = colors.bg  },
  },

  command = {
    a = { fg = colors.black, bg = colors.yellow, gui = "bold" },
    b = { fg = colors.fg,    bg = colors.gray },
    c = { fg = colors.fg,    bg = colors.bg  },
  },

  inactive = {
    a = { fg = colors.gray, bg = colors.bg },
    b = { fg = colors.gray, bg = colors.bg },
    c = { fg = colors.gray, bg = colors.bg },
  },
}
