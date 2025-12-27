-- Theme: Nord --

local colors = {
  bg      = "#434C5E",
  fg      = "#D8DEE9",
  black   = "#2E3440",
  gray    = "#434C5E",
  blue    = "#81A1C1",
  green   = "#A3BE8C",
  yellow  = "#EBCB8B",
  red     = "#BF616A",
  purple  = "#B48EAD"
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
