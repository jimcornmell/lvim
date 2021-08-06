local M = {}

M.config = function()
    require("todo-comments").setup {
        keywords = {
            OK = { icon = "✔ ", color = "ok" },
            ISH = { icon = "☛ ", color = "ish" },
            BAD = { icon = "✘ ", color = "bad" },
            TEST = { icon = "⚖ ", color = "test" }
        },
        colors = {
            ok = { "#10B981" },
            ish = { "#e0e031" },
            bad = { "#f06981" },
            test = { "#f02244" }
        },
    }
end
return M
