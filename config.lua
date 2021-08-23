--[[ Notes: {{{1

Useful Links and TODO
https://github.com/Kethku/neovide
http://cheat.sh
Buffer bar info: https://github.com/romgrk/barbar.nvim

TODO: LSP Java
TODO: LSP Perl
TODO: LSP JavaScript
TODO: LSP React
TODO: LSP PHP
TODO: LSP Bash
TODO: LSP Python
}}}1 ]]

-- Settings {{{1

lvim.format_on_save = false
lvim.auto_complete = true
lvim.colorscheme = "zenburn"
lvim.auto_close_tree = 0
lvim.wrap_lines = false
lvim.timeoutlen = 100
lvim.leader = "space"
lvim.ignore_case = true
lvim.smart_case = true
lvim.termguicolors = true
lvim.builtin.dashboard.active = true
lvim.vsnip_dir = os.getenv "HOME" .. "/.config/lvim/snippets/"
lvim.builtin.treesitter.ensure_installed = "all"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- FIX: Disable java for now.
-- lvim.builtin.jdtls.active = false

--}}}

-- Dashboard {{{1

-- Several shorter ASCII art logos, so not too much space is taken up.
lvim.builtin.dashboard.custom_header = {
    -- "⠀⣿⡟",
    -- "⠀⣿⠇⠀⠀⠀⠀⠀⣤⡄⠀⠀⢠⣤⡄⠀⢠⣤⣠⣤⣤⣤⡀⠀⠀⢀⣤⣤⣤⣤⡄⠀⠀⠀⣤⣄⣤⣤⣤⠀⠀⣤⣤  ⣤⡄⠀ ⢠⣤⣤⣤⣤⣤⠀⠀⣠⣤⣤⣤⣄⣤⣤",
    -- "⢠⣿⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⣸⣿⠁⠀⣿⣿⠉⠀⠈⣿⡇⠀⠀⠛⠋⠀⠀⢹⣿⠀⠀⠀⣿⠏⠀⠸⠿⠃⠀⣿⣿⠀⣰⡟⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⣿⡟⢸⣿⡇⢀⣿",
    -- "⣸⡇⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⣿⡟⠀⢠⣿⡇⠀⠀⢰⣿⡇⠀⣰⣾⠟⠛⠛⣻⡇⠀⠀⢸⡿⠀⠀⠀⠀⠀⠀⢻⣿⢰⣿⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀⠀⢸⣿⠇⢸⣿⠀⢸⡏",
    -- "⣿⣧⣤⣤⣤⡄⠀⠘⣿⣤⣤⡤⣿⠇⠀⢸⣿⠁⠀⠀⣼⣿⠀⠀⢿⣿⣤⣤⠔⣿⠃⠀⠀⣾⡇⠀⠀⠀⠀⠀⠀⢸⣿⣿⠋⠀⠀⠀⢠⣤⣤⣿⣥⣤⡄⠀⣼⣿⠀⣸⡏⠀⣿⠃",
    -- "⠉⠉⠉⠉⠉⠁⠀⠀⠈⠉⠉⠀⠉⠀⠀⠈⠉⠀⠀⠀⠉⠉⠀⠀⠀⠉⠉⠁⠈⠉⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠁⠀⠉⠁⠀⠉⠁⠀⠉",

    -- "█                                  █░  ░█   █",
    -- "█                                  ▓▒  ▒▓",
    -- "█      █   █  █▒██▒  ░███░   █▒██▒ ▒█  █▒ ███    ██▓█▓",
    -- "█      █   █  █▓ ▒█  █▒ ▒█   ██  █  █  █    █    █▒█▒█",
    -- "█      █   █  █   █      █   █      █░░█    █    █ █ █",
    -- "█      █   █  █   █  ▒████   █      ▓▒▒▓    █    █ █ █",
    -- "█      █   █  █   █  █▒  █   █      ▒██▒    █    █ █ █",
    -- "█      █▒ ▓█  █   █  █░ ▓█   █       ██     █    █ █ █",
    -- "██████ ▒██▒█  █   █  ▒██▒█   █       ██   █████  █ █ █",

    -- "    __                          _    ___         ",
    -- "   / /   __  ______  ____ _____| |  / (_)___ ___ ",
    -- "  / /   / / / / __ \\/ __ `/ ___/ | / / / __ `__ \\",
    -- " / /___/ /_/ / / / / /_/ / /   | |/ / / / / / / /",
    -- "/_____/\\__,_/_/ /_/\\__,_/_/    |___/_/_/ /_/ /_/ ",
    -- "                                                 ",

    "▌              ▌ ▌▗",
    "▌  ▌ ▌▛▀▖▝▀▖▙▀▖▚▗▘▄ ▛▚▀▖",
    "▌  ▌ ▌▌ ▌▞▀▌▌  ▝▞ ▐ ▌▐ ▌",
    "▀▀▘▝▀▘▘ ▘▝▀▘▘   ▘ ▀▘▘▝ ▘",
}

lvim.builtin.dashboard.custom_section = {
    a = {description = {"  New File           "}, command = "DashboardNewFile" },
    b = {description = {"  Find File          "}, command = "Telescope find_files", },
    c = {description = {"  Ranger             "}, command = "RnvimrToggle"},
    d = {description = {"  Recently Used Files"}, command = "Telescope oldfiles", },
    e = {description = {"  Find Word          "}, command = "Telescope live_grep", },
    f = {description = {"  Marks              "}, command = "Telescope marks"},
    g = {description = {"  Settings           "}, command = ":e ~/.config/lvim/config.lua", },
    h = {description = {"  Git Status         "}, command = "Telescope git_status" },
    i = {description = {"  Zshrc              "}, command = ":e ~/.zshrc" },
    j = {description = {"  Kitty Config       "}, command = ":e ~/.config/kitty/kitty.conf" }
    -- f = {description = {"  Neovim Config Files"}, command = "Telescope find_files cwd=" .. CONFIG_PATH, },
    -- h = {description = {"  File Browser       "}, command = "Telescope file_browser" },
    -- i = {description = {"  Load Last Session  "}, command = "SessionLoad"},
}

--}}}

-- Additional Plugins {{{1
lvim.plugins = {
    -- Colorizer: #ff0000, Blue, #f0f
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("user.colorizer").config()
        end,
    },
    -- Zen Mode
    {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        config = function()
            require("user.zen").config()
        end,
    },
    -- Better motions
    {
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("user.hop").config()
        end,
    },
    -- Todo comments.
    -- FIX:Something to describe.
    -- FIXME: Something to describe.
    -- BUG:Something to describe.
    -- FIXIT: Something to describe.
    -- ISSUE: Something to describe.
    -- TODO:Something to describe.
    -- HACK:Something to describe.
    -- WARN:Something to describe.
    -- WARNING:Something to describe.
    -- XXX:Something to describe.
    -- PERF:Something to describe.
    -- OPTIM:Something to describe.
    -- PERFORMANCE:Something to describe.
    -- OPTIMIZE:Something to describe.
    -- NOTE:Something to describe.
    -- INFO:Something to describe.
    -- TEST: Test something.
    -- OK: Something.
    -- ISH: Something.
    -- BAD: Something.
    -- :TodoQuickFix
    -- :TodoTelescope
    -- :TodoTrouble
    {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("user.todo-comments").config()
        end
    },
    -- Symbols outline - F12
    {
        'simrat39/symbols-outline.nvim',
        cmd = 'SymbolsOutline'
    },
    -- Enhanced increment/decrement : True, true, January
    {
        "monaqa/dial.nvim",
        event = "BufRead",
        config = function()
            require("user.dial").config()
        end,
    },
    -- SQL LSP.
    {
        "nanotee/sqls.nvim",
        event = "BufRead",
        ft = "sql",
        config = function()
            require("user.sqls").config()
        end,
    },
    -- Markdown preview
    {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        ft = "markdown",
    },
    -- Codi: Interactive scratchpad
    {
        "metakirby5/codi.vim",
        cmd = "Codi",
    },
    -- Markers in margin. 'ma' adds marker
    {"kshenoy/vim-signature",
        event = "BufRead",
    },
    -- Surroundings.  Try cs"'  in a string "with double quotes" to convert to single.
    {
        "tpope/vim-surround",
        event = "BufRead",
    },
    -- Unix commands. Try ":SudoWrite"
    {
        "tpope/vim-eunuch",
        event = "BufRead",
    },
    -- Highlight URL's. http://www.vivaldi.com
    {
        "itchyny/vim-highlighturl",
        event = "BufRead",
    },
    -- Git plugin.  Try ":Git "
    {
        "tpope/vim-fugitive",
        event = "BufRead",
    },
    -- Kitty config syntax.  Edit kitty, with vk
    {
        "fladson/vim-kitty",
        event = "BufRead",
        ft = "conf",
    },
    -- Lazygit: Try F8
    {
        "kdheepak/lazygit.nvim",
        cmd = "LazyGit",
    },
    -- Ranger, Leader r
    {
        "kevinhwang91/rnvimr",
        cmd = "RnvimrToggle",
    }
}
-- }}}1

-- Autocommands (https://neovim.io/doc/user/autocmd.html) {{{1
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
-- }}}1

-- Additional Leader bindings for WhichKey and key mappings {{{1
lvim.builtin.which_key.mappings["r"] = {
    "<cmd>RnvimrToggle<CR>",                             "Ranger"
}

lvim.builtin.which_key.mappings["z"] = {
    "<cmd>ZenMode<CR>",                             "Zen Mode"
}

lvim.builtin.which_key.mappings["t"] = {
    name = "Toggle Display Options",
    a = { ":call ToggleAll()<CR>",                         "Toggle All"},
    b = { ":call ToggleColourGitBlame()<CR>",              "Toggle git Blame line visibility"},
    c = { ":call ToggleColourCursorColumn()<CR>",          "Toggle cursor Column visibility"},
    e = { ":call ToggleColourWhiteSpaceAtEndOfLine()<CR>", "Toggle whitespace at End of line visibility"},
    g = { ":call ToggleGutter()<CR>",                      "Toggle left Gutter"},
    h = { ":ColorizerToggle<CR>",                          "Toggle Hex colour and colour name matches"},
    i = { ":call ToggleColourIncSearch()<CR>",             "Toggle hIghlight matching words under cursor"},
    l = { ":call ToggleColourCursorLine()<CR>",            "Toggle cursor Line visibility"},
    m = { ":call ToggleMarkerLines()<CR>",                 "Toggle Marker lines"},
    r = { ":set wrap!<CR>",                                "Toggle line wRap"},
    s = { ":set spell!<CR>",                               "Toggle Spell checking"},
    t = { ":call ToggleColourLineTooLong()<CR>",           "Toggle line Too long highlighting"},
    w = { ":set list!<CR>",                                "Toggle Whitespace visibility"},
    y = { ":call ToggleColourSyntax()<CR>",                "Toggle sYntax highlighting"}
}
lvim.builtin.which_key.mappings["j"] = {
    name = "Show/Jump various dev info",
    a = {":silent exec '!jump Artifact %:p:h'<CR>",        "Jump Artifactory (project)"},
    c = {":silent exec '!jump Ci %:p:h'<CR>",              "Jump Ci (project)"},
    h = {":call OpenHelpPage()<CR>",                       "Jump vim Help page for word under cursor"},
    i = {":silent exec '!jump Live %:p:h'<CR>",            "Jump lIve (project)"},
    j = {":call JumpToSelection()<CR>",                    "Jump to url or hex color or git etc"},
    l = {":silent exec '!jump Lint %:p:h'<CR>",            "Jump Lint (project)"},
    m = {":<C-U>exe 'Man' v:count '<C-R><C-W>'<CR>",       "Jump linux Man page for word under cursor"},
    n = {":silent exec '!jump Notes %:p:h'<CR>",           "Jump Notes (project search in confluence)"},
    r = {":silent exec '!jump Repo %:p:h'<CR>",            "Jump Repo (git or bitbucket)"},
    s = {":call ShowJira()<CR>",                           "Show jira ticket in new buffer"},
    t = {":silent exec '!jump Ticket %:p:h'<CR>",          "Jump jira Ticket in browser"},
    u = {":silent exec '!jump TestReports %:p:h'<CR>",     "Jump Unit test reports"}
}
lvim.builtin.which_key.mappings["d"] = {
    name = "Diagnostics",
    t = { "<cmd>TroubleToggle<CR>", "trouble" },
    w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<CR>", "workspace" },
    d = { "<cmd>TroubleToggle lsp_document_diagnostics<CR>", "document" },
    q = { "<cmd>TroubleToggle quickfix<CR>", "quickfix" },
    l = { "<cmd>TroubleToggle loclist<CR>", "loclist" },
    r = { "<cmd>TroubleToggle lsp_references<CR>", "references" },
}

vim.api.nvim_set_keymap("n", "<TAB>",   ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-l>",   ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>",   ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-x>",   ":BufferClose<CR>", { noremap = true, silent = true })

-- }}}1

vim.cmd('source ~/.config/lvim/user.vim')
vim.cmd('source ~/.config/lvim/lua/user/lualine.lua')

-- See end of this file for my other config.
-- ~/.local/share/lunarvim/lvim/init.lua
-- Two lines added:
--     vim.cmd('source ~/.config/lvim/user_colors.vim')
--     vim.cmd('source ~/.config/lvim/user_keys.vim')


