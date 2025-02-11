--[[ Notes: {{{1
Useful Links and TODO
http://cheat.sh
Buffer bar info: https://github.com/romgrk/barbar.nvim
-- }}}1 ]]

--[[ Settings {{{1
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
--]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
lvim.log.level                                       = "warn"
-- keymappings [view all the defaults by pressing <leader>Lk] add your own keymapping
lvim.keys.normal_mode["<C-s>"]                       = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- Edit a default keymapping
lvim.keys.normal_mode["<C-q>"]                       = ":q<cr>"

lvim.use_icons                                       = true
lvim.format_on_save                                  = false
lvim.auto_complete                                   = true
lvim.colorscheme                                     = "zenburn"          -- https://github.com/jnurmine/Zenburn
lvim.auto_close_tree                                 = 0
lvim.wrap_lines                                      = false
lvim.timeoutlen                                      = 100
lvim.leader                                          = "space"
lvim.ignore_case                                     = true
lvim.smart_case                                      = true
lvim.termguicolors                                   = true
lvim.vsnip_dir                                       = os.getenv "HOME" .. "/.config/lvim/snippets/"
lvim.builtin.alpha.active                            = true
lvim.builtin.alpha.mode                              = "dashboard"
lvim.builtin.terminal.active                         = true
lvim.builtin.nvimtree.setup.view.side                = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git  = true
lvim.builtin.alpha.active                            = true
lvim.builtin.dap.active                              = true
lvim.builtin.terminal.active                         = true
lvim.builtin.cmp.completion.keyword_length           = 2

-- SQLLS setup. https://github.com/joe-re/sql-language-server
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
-- return server ~= "sqlls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- require("lvim.lsp.manager").setup("sqlls", {
-- cmd = {"sql-language-server", "up", "--method", "stdio"};
-- filetypes = {"sql", "mysql"};
-- root_dir = function() return vim.loop.cwd() end;
-- -- config = function()
-- -- require("user.sqlls").config()
-- -- end;
-- })

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed             = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml"
}

lvim.builtin.treesitter.ignore_install               = { "haskell" }
lvim.builtin.treesitter.highlight.enabled            = true

-- local iconError     = ""
-- local iconWarn      = ""
-- local iconHint      = ""
-- local iconInfo      = ""
-- local iconError        = "⛔"
-- local iconWarn         = "⚡"
-- local iconHint         = "⭐"
-- local iconInfo         = "✨"
local iconBar                                        = "▌" -- █ ▉ ▊ ▋ ▌ ▍ ▎ ▏
local iconMark                                       = "◣"
-- local iconPlus         = ""
local iconMinus                                      = ""
local iconExclamation                                = ""

-- To set colours see GitSigns* in ~/.config/lvim/user_colors.vim
lvim.builtin.gitsigns.opts.signs.add.text            = iconBar
lvim.builtin.gitsigns.opts.signs.change.text         = iconBar
lvim.builtin.gitsigns.opts.signs.delete.text         = iconMark
lvim.builtin.gitsigns.opts.signs.topdelete.text      = iconMinus
lvim.builtin.gitsigns.opts.signs.changedelete.text   = iconExclamation

-- To set colours see LspDiagnostics* in ~/.config/lvim/user_colors.vim
-- local config = { -- your config
-- virtual_text = {prefix = '!'} ,
-- signs = lvim.lsp.diagnostics.signs,
-- underline = lvim.lsp.diagnostics.underline,
-- update_in_insert = lvim.lsp.diagnostics.update_in_insert,
-- severity_sort = lvim.lsp.diagnostics.severity_sort,
-- float = lvim.lsp.diagnostics.float,
-- }
--}}}

-- Dashboard/Alpha {{{1

lvim.builtin.alpha.dashboard.section.header.opts.hl  = ""
-- Shorter ASCII art logo, so not too much space is taken up.
lvim.builtin.alpha.dashboard.section.header.val      = {
    "▌              ▌ ▌▗",
    "▌  ▌ ▌▛▀▖▝▀▖▙▀▖▚▗▘▄ ▛▚▀▖",
    "▌  ▌ ▌▌ ▌▞▀▌▌  ▝▞ ▐ ▌▐ ▌",
    "▀▀▘▝▀▘▘ ▘▝▀▘▘   ▘ ▀▘▘▝ ▘",
}

lvim.builtin.alpha.dashboard.section.buttons.entries = {
    { "SPC f", "  Find File", "<CMD>Telescope find_files<CR>" },
    { "SPC n", "  New File", "<CMD>ene!<CR>" },
    { "SPC p", "  Recent Projects ", "<CMD>Telescope projects<CR>" },
    { "SPC u", "  Recently Used Files", "<CMD>Telescope oldfiles<CR>" },
    -- { "SPC s",   "  Load last session",           "<CMD>SessionLoad<CR>" },
    { "SPC r", "  Ranger", "<CMD>RnvimrToggle<CR>" },
    { "SPC m", "  Marks              ", "<CMD>Telescope marks<CR>" },
    { "SPC w", "  Find Word", "<CMD>Telescope live_grep<CR>" },
    { "SPC c", "  Edit Configuration", "<CMD>e ~/bin/config/configFiles.md<CR>" },
    { "SPC g", "  Git status", "<CMD>Telescope git_status<CR>" }
}
--}}}

-- Vim config {{{1
vim.cmd('source ~/.config/lvim/user.vim')
vim.cmd('source ~/.config/lvim/lua/user/lualine.lua')
-- }}}1

-- Additional Plugins {{{1
lvim.plugins = {
    {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        config = function()
            require("user.zen").config()
        end,
    },

    -- Unix commands. Try ":SudoWrite"
    -- Issue with cmp.u.k.recursive appearing when you hit enter.
    -- See: https://github.com/hrsh7th/nvim-cmp/issues/770
    {
        "tpope/vim-eunuch",
        event = "BufRead",
    },

    -- Markers in margin. 'ma' adds marker
    {
        "kshenoy/vim-signature",
        event = "BufRead",
    },

    -- Highlight URL's. http://www.vivaldi.com
    {
        "itchyny/vim-highlighturl",
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

    {
        "rhysd/devdocs.vim"
    },

    -- -----------------------------------------------------------------------
    -- Suggestions from https://www.lunarvim.org/plugins/03-extra-plugins.html
    -- Navigation plugins
    -- hop
    -- neovim motions on speed!
    -- Better motions
    {
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("hop").setup()
            vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
            vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
        end,
    },

    -- better quickfix window
    {
        "kevinhwang91/nvim-bqf",
        event = { "BufRead", "BufNew" },
        config = function()
            require("bqf").setup({
                auto_enable = true,
                preview = {
                    win_height = 12,
                    win_vheight = 12,
                    delay_syntax = 80,
                    border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
                },
                func_map = {
                    vsplit = "",
                    ptogglemode = "z,",
                    stoggleup = "",
                },
                filter = {
                    fzf = {
                        action_for = { ["ctrl-s"] = "split" },
                        extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
                    },
                },
            })
        end,
    },

    {
        "f-person/git-blame.nvim",
        event = "BufRead",
        config = function()
            vim.cmd "highlight default link gitblame SpecialComment"
            vim.g.gitblame_enabled = 0
        end,
    },

    -- color highlighter #ff0000, Blue, #f0f
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" }, {
                names    = true, -- "Name" codes, see https://www.w3schools.com/colors/colors_hex.asp   Blue, HotPink, OldLace, Plum, LightGreen, Coral
                RGB      = true, -- #RGB hex codes                                                      #f0f #FAB
                RRGGBB   = true, -- #RRGGBB hex codes                                                   #ffff00 #FF00FF
                RRGGBBAA = true, -- #RRGGBBAA hex codes                                                 #ffff00ff #AbCdEf
                rgb_fn   = true, -- CSS rgb() and rgba() functions                                      rgb(100,200,50) rgba(255,255,255,1.0) rgb(100%, 0%, 0%)
                hsl_fn   = true, -- CSS hsl() and hsla() functions                                      hsl(120,100%,50%) hsla(20,100%,40%,0.7)
                css      = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                css_fn   = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
                mode     = 'background', -- Set the display mode.
            })
        end,
    },

    {
        "zbirenbaum/copilot-cmp",
        event = "InsertEnter",
        dependencies = { "zbirenbaum/copilot.lua" },

        config = function()
            vim.defer_fn(function()
                -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
                require("copilot").setup({
                    suggestion = {
                        enabled = false
                    },
                    panel = {
                        enabled = false
                    },
                })

                -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
                require("copilot_cmp").setup()
            end, 100)
        end,
    },

    -- Handle opening files with line numbers from command line.
    { 'bogado/file-line' },

    -- Enhanced increment/decrement : True, true, January
    {
        "monaqa/dial.nvim",
        event = "BufRead",
        config = function()
            require("user.dial").config()
        end
    },

    -- todo-comments.nvim
    -- highlight and search for todo comments
    -- FIX:Something to describe.
    -- FIXJC:Something to describe.
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
        event = "BufRead",
        -- requires = "nvim-lua/plenary.nvim",
        config = function()
            require("user.todo-comments").config()
        end,
    },

    -- enable repeating supported plugin maps with "."
    { "tpope/vim-repeat" },

    -- open url with gx
    {
        "felipec/vim-sanegx",
        event = "BufRead",
    },

    -- mappings to delete, change and add surroundings
    -- Surroundings.  Try cs"'  in a string "with double quotes" to convert to single.
    {
        "tpope/vim-surround",
        -- event = "BufRead",
        --   keys = {"c", "d", "y"}
    },

    -- Vim syntax file for Docker's Dockerfile and snippets for snipMate.
    {
        'ekalinin/Dockerfile.vim'
    },
}
-- }}}1

-- Autocommands (https://neovim.io/doc/user/autocmd.html) {{{1
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
-- }}}1

-- Additional Leader bindings for WhichKey and key mappings {{{1
-- lvim.builtin.which_key.mappings["r"] = {
-- "<cmd>RnvimrToggle<CR>",                             "Ranger"
-- }

lvim.builtin.which_key.mappings["z"] = {
    "<cmd>ZenMode<CR>:set nospell<CR>", "Zen Mode"
}

lvim.builtin.which_key.mappings["t"] = {
    name = "Toggle Display Options",
    a = { ":call ToggleAll()<CR>", "Toggle All" },
    b = { ":call ToggleColourGitBlame()<CR>", "Toggle git Blame line visibility" },
    c = { ":call ToggleColourCursorColumn()<CR>", "Toggle cursor Column visibility" },
    e = { ":call ToggleColourWhiteSpaceAtEndOfLine()<CR>", "Toggle whitespace at End of line visibility" },
    g = { ":call ToggleGutter()<CR>", "Toggle left Gutter" },
    h = { ":ColorizerToggle<CR>", "Toggle Hex colour and colour name matches" },
    i = { ":call ToggleColourIncSearch()<CR>", "Toggle hIghlight matching words under cursor" },
    l = { ":call ToggleColourCursorLine()<CR>", "Toggle cursor Line visibility" },
    m = { ":call ToggleMarkerLines()<CR>", "Toggle Marker lines" },
    r = { ":set wrap!<CR>", "Toggle line wRap" },
    s = { ":set spell!<CR>", "Toggle Spell checking" },
    t = { ":call ToggleColourLineTooLong()<CR>", "Toggle line Too long highlighting" },
    w = { ":set list!<CR>", "Toggle Whitespace visibility" },
    y = { ":call ToggleColourSyntax()<CR>", "Toggle sYntax highlighting" }
}
lvim.builtin.which_key.mappings["j"] = {
    name = "Show/Jump various dev info",
    a = { ":silent exec '!jump Artifact %:p:h'<CR>", "Jump Artifactory (project)" },
    c = { ":silent exec '!jump Ci %:p:h'<CR>", "Jump Ci (project)" },
    h = { ":call OpenHelpPage()<CR>", "Jump vim Help page for word under cursor" },
    i = { ":silent exec '!jump Live %:p:h'<CR>", "Jump lIve (project)" },
    j = { ":call JumpToSelection()<CR>", "Jump to url or hex color or git etc" },
    l = { ":silent exec '!jump Lint %:p:h'<CR>", "Jump Lint (project)" },
    m = { ":<C-U>exe 'Man' v:count '<C-R><C-W>'<CR>", "Jump linux Man page for word under cursor" },
    n = { ":silent exec '!jump Notes %:p:h'<CR>", "Jump Notes (project search in confluence)" },
    r = { ":silent exec '!jump Repo %:p:h'<CR>", "Jump Repo (git or bitbucket)" },
    s = { ":call ShowJira()<CR>", "Show jira ticket in new buffer" },
    t = { ":silent exec '!jump Ticket %:p:h'<CR>", "Jump jira Ticket in browser" },
    u = { ":silent exec '!jump TestReports %:p:h'<CR>", "Jump Unit test reports" }
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

vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>", ":bprevious<CR>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n", "<TAB>",   ":BufferNext<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferPrevious<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<S-l>",   ":BufferNext<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<S-h>",   ":BufferPrevious<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<S-x>",   ":BufferClose<CR>", { noremap = true, silent = true })

-- }}}1

-- Load my snippets {{{1
-- See ~/.config/lvim/snippets/package.json
-- And this site to make snippets: https://snippet-generator.app
-- For variables see: https://code.visualstudio.com/docs/editor/userdefinedsnippets#_variables
require("luasnip/loaders/from_vscode").load { paths = { "~/.config/lvim/snippets" } }
-- }}}1

-- DAP {{{1
local dap = require('dap')

dap.adapters.python = {
    type = 'executable',
    command = "python3",
    args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = dap.configurations.python or {}
table.insert(dap.configurations.python, {
    type = 'python',
    request = 'launch',
    name = 'launch with options',
    program = '${file}',
    python = function() end,
    pythonPath = function()
        local path
        for _, server in pairs(vim.lsp.buf_get_clients()) do
            path = vim.tbl_get(server, 'config', 'settings', 'python', 'pythonPath')
            if path then break end
        end
        path = vim.fn.input('Python path: ', path or '', 'file')
        return path ~= '' and vim.fn.expand(path) or nil
    end,
    args = function()
        local args = {}
        local i = 1
        while true do
            local arg = vim.fn.input("Argument [" .. i .. "]: ")
            if arg == '' then
                break
            end
            args[i] = arg
            i = i + 1
        end
        return args
    end,
    justMyCode = function()
        return vim.fn.input('justMyCode? [y/n]: ') == 'y'
    end,
    stopOnEntry = function()
        return vim.fn.input('justMyCode? [y/n]: ') == 'y'
    end,
    console = 'integratedTerminal'
})
-- }}}1

-- See end of this file for my other config.
--    ~/.local/share/lunarvim/lvim/init.lua
-- It has two lines added:
--     vim.cmd('source ~/.config/lvim/user_colors.vim')
--     vim.cmd('source ~/.config/lvim/user_keys.vim')

-- HACK: Link in the style so the background is correct.
lvim.builtin.lualine.options.theme = "curvywurvy"
--    ln -s ~/.config/lvim/lua/user/lualine-curvywurvy-theme.lua ~/.local/share/lunarvim/site/pack/lazy/opt/lualine.nvim/lua/lualine/themes/curvywurvy.lua

