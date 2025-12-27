-- Theme: Gruvbox --

local colors = {
  bg      = "#928374",
  fg      = "#ebdbb2",
  black   = "#282828",
  gray    = "#928374",
  blue    = "#458588",
  green   = "#98971a",
  yellow  = "#d79921",
  red     = "#cc241d",
  purple  = "#b16286"
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
