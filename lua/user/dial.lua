local M = {}

M.config = function()
    local augend = require("dial.augend")

    require("dial.config").augends:register_group{
        -- "number#decimal#fixed#zero",
        -- "markup#markdown#header",
        default = {
            augend.integer.alias.decimal_int,
            augend.integer.alias.hex,
            augend.integer.alias.octal,
            augend.integer.alias.binary,
            augend.constant.alias.bool,
            augend.semver.alias.semver,
            augend.date.alias["%Y/%m/%d"],
            augend.date.alias["%Y-%m-%d"],
            augend.date.alias["%H:%M:%S"],
            augend.date.alias["%H:%M"],
            -- lowercase hex colour #1a1a1a
            augend.hexcolor.new{
                case = "lower"
            },
            -- uppercase hex colour #1A1A1A
            -- augend.user.new{
                -- find = require("dial.augend.common").find_pattern("%d+"),
                -- add = function(text, addend, cursor)
                    -- local n = tonumber(text)
                    -- n = math.floor(n * (2 ^ addend))
                    -- text = tostring(n)
                    -- cursor = #text
                    -- return {text = text, cursor = cursor}
                -- end
            -- },
            augend.constant.new{
                elements = {"Foreground", "Background"},
                word = true, cyclic = true,
            },
            augend.constant.new{
                elements = {"foreground", "background"},
                word = true, cyclic = true,
            },
            augend.constant.new{
                elements = {"enable", "disable"},
                word = true, cyclic = true,
            },
            augend.constant.new{
                elements = {"enabled", "disabled"},
                word = true, cyclic = true,
            },
            augend.constant.new{
                elements = {"&&", "||"},
                word = false, cyclic = true,
            },
            augend.constant.new{
                elements = {"yes", "no"},
                word = false, cyclic = true,
            },
            augend.constant.new{
                elements = {"Yes", "No"},
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
            augend.constant.new{
                elements = { "FIX:", "FIXJC:", "FIXME:", "BUG:", "FIXIT:", "ISSUE:", "TODO:", "HACK:", "WARN:", "WARNING:", "XXX:", "PERF:", "OPTIM:", "PERFORMANCE:", "OPTIMIZE:", "NOTE:", "INFO:", "TEST:", "OK:", "ISH:", "BAD:" },
                word = false, cyclic = true,
            },
        },
    }

end

return M

