local M = {}

M.config = function()
    local augend = require("dial.augend")

    require("dial.config").augends:register_group{
        -- "number#decimal#fixed#zero",
        -- "markup#markdown#header",
        default = {
            "augend.integer.alias.hex",
            "augend.integer.alias.binary",
            "augend.date.alias[%Y/%m/%d]",
            "augend.date.alias[%Y-%m-%d]",
            "augend.date.alias[%H:%M:%S]",
            "augend.date.alias[%H:%M]",
            "augend.hexcolor.new{}",

            augend.constant.new{
                elements = {"Foreground", "Background"},
                word = true, cyclic = true,
            },
            augend.constant.new{
                elements = {"foreground", "background"},
                word = true, cyclic = true,
            },
            augend.constant.new{
                elements = {"&&", "||"},
                word = false, cyclic = true,
            },
            augend.constant.new{
                elements = {"true", "false"},
                word = false, cyclic = true,
            },
            augend.constant.new{
                elements = {"True", "False"},
                word = false, cyclic = true,
            },
            augend.constant.new{
                elements = { "FATAL", "ERROR", "WARN", "INFO", "DEBUG", "TRACE", "OFF" },
                word = false, cyclic = true,
            },
            augend.constant.new{
                elements = { "fatal", "error", "warn", "info", "debug", "trace" },
                word = false, cyclic = true,
            },
            augend.constant.new{
                elements = { "public", "protected", "private" },
                word = false, cyclic = true,
            },
            augend.constant.new{
                elements = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" },
                word = false, cyclic = true,
            },
            augend.constant.new{
                elements = { "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" },
                word = false, cyclic = true,
            },
        },
    }

end

return M

