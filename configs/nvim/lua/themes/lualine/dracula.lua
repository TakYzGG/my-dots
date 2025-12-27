-- Theme: Dracula --

local colors = {
  bg      = "#44475a",
  fg      = "#f8f8f2",
  black   = "#282a36",
  gray    = "#44475a",
  blue    = "#bd93f9",
  green   = "#50fa7b",
  yellow  = "#f1fa8c",
  red     = "#ff5555",
  purple  = "#ff79c6"
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
