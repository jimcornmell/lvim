local M = {}

M.config = function()
    require("todo-comments").setup {
        keywords = {
            OK = { icon = "✔ ", color = "ok" },
            ISH = { icon = "☛ ", color = "ish" },
            BAD = { icon = "✘ ", color = "bad" },
            TEST = { icon = " ", color = "test" },
            FIXJC = { icon = " ", color = "fixjc" },
            FIXME = { icon = " ", color = "fixjc" },
            FIX = { icon = " ", color = "fixjc" },
            BUG = { icon = " ", color = "fixjc" },
            ISSUE = { icon = " ", color = "fixjc" },
            FIXIT = { icon = " ", color = "fixjc" },
        },
        colors = {
            ok = { "#10B981" },
            ish = { "#e0e031" },
            bad = { "#f06981" },
            test = { "#f02244" },
            fixjc = { "#ff0000" },
        },
    }
end
return M
