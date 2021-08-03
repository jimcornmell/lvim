local M = {}

M.config = function()
  vim.cmd [[
nmap <C-a> <Plug>(dial-increment)
nmap <C-x> <Plug>(dial-decrement)
vmap <C-a> <Plug>(dial-increment)
vmap <C-x> <Plug>(dial-decrement)
vmap g<C-a> <Plug>(dial-increment-additional)
vmap g<C-x> <Plug>(dial-decrement-additional)
]]

  local dial = require "dial"

  dial.config.searchlist.normal = {
    "number#decimal#fixed#zero",
    "number#hex",
    "number#binary",
    "date#[%Y/%m/%d]",
    "date#[%Y-%m-%d]",
    "date#[%H:%M:%S]",
    "date#[%H:%M]",
    "color#hex",
    "markup#markdown#header",
  }

  dial.augends["custom#boolean"] = dial.common.enum_cyclic {
    name = "boolean",
    strlist = { "true", "false" },
  }
  table.insert(dial.config.searchlist.normal, "custom#boolean")

  -- For Languages which prefer True/False, e.g. python.
  dial.augends["custom#Boolean"] = dial.common.enum_cyclic {
    name = "Boolean",
    strlist = { "True", "False" },
  }
  table.insert(dial.config.searchlist.normal, "custom#Boolean")

  -- For Calendar.
  dial.augends["custom#Calendar"] = dial.common.enum_cyclic {
    name = "Calendar",
    strlist = {
      "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    },
  }
  table.insert(dial.config.searchlist.normal, "custom#Calendar")

  -- For CAL.
  dial.augends["custom#CAL"] = dial.common.enum_cyclic {
    name = "CAL",
    strlist = {
      "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"
    },
  }
  table.insert(dial.config.searchlist.normal, "custom#CAL")

end

return M
