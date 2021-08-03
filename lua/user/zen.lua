local M = {}

M.config = function()
    require("zen-mode").setup({
        window = {
            backdrop = 1,
            height = 1,                     -- height of the Zen window
            width = 1,                      -- height of the Zen window
            options = {
                signcolumn = "no",          -- disable signcolumn
                number = true,              -- disable number column
                relativenumber = false,     -- disable relative numbers
                cursorline = true,          -- disable cursorline
                cursorcolumn = false,       -- disable cursor column
                foldcolumn = "0",           -- disable fold column
                list = false,               -- disable whitespace characters
            },
        },

        plugins = {
            gitsigns = { enabled = false }, -- disables git signs
            kitty = {
                enabled = true,
                font = "+5",                -- font size increment
            }
        },
    })
end

return M
