-- Theme: Minimal --

local colors = {
  bg      = "#232323", -- 8
  fg      = "#ffffff", -- foregrountd
  black   = "#151515", -- 0
  gray    = "#232323", -- 8
  blue    = "#2979ff", -- 4
  green   = "#00e676", -- 2
  yellow  = "#ffea00", -- 3
  red     = "#ff1744", -- 1
  purple  = "#d500f9" -- 5
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
