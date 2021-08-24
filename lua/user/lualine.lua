-- See: https://github.com/hoob3rt/lualine.nvim

-- Configuration {{{1

-- Settings {{{2
local lineLengthWarning = 80
local lineLengthError = 120
lvim.builtin.lualine.sections = {
    lualine_a = {}, lualine_b = {}, lualine_c = {},
    lualine_x = {}, lualine_y = {}, lualine_z = {}
}
lvim.builtin.lualine.inactive_sections = {
    lualine_a = {}, lualine_b = {}, lualine_c = {},
    lualine_x = {}, lualine_y = {}, lualine_z = {}
}
-- }}}2

-- Colours, maps and icons {{{2
local colors = {
    bg               = '#0f1117',
    modetext         = '#000000',

    giticonbg        = '#FF8800',
    gitbg            = '#5C2C2E',
    gittext          = '#C5C5C5',

    diagerror        = '#F44747',
    diagwarn         = '#FF8800',
    diaghint         = '#4FC1FF',
    diaginfo         = '#FFCC66',

    lspiconbg        = '#68AF00',
    lspbg            = '#304B2E',
    lsptext          = '#C5C5C5',

    typeiconbg       = '#FF8800',
    typebg           = '#5C2C2E',
    typetext         = '#C5C5C5',
    typeiconbgrw     = '#229900',
    typetextmodified = '#FF3300',
    typeiconbgro     = '#000000',
    typetextreadonly = '#000000',

    statsiconbg      = '#9CDCFE',
    statsbg          = '#5080A0',
    statstext        = '#000000',

    lineokfg         = '#000000',
    lineokbg         = '#5080A0',
    linelongerrorfg  = '#FF0000',
    linelongwarnfg   = '#FFFF00',
    linelongbg       = '#5080A0',

    shortbg          = '#DCDCAA',
    shorttext        = '#000000',

    shortrightbg     = '#3F3F3F',
    shortrighttext   = '#7C4C4E',

    red              = '#D16969',
    yellow           = '#DCDCAA',
    magenta          = '#D16D9E',
    green            = '#608B4E',
    orange           = '#FF8800',
    purple           = '#C586C0',
    blue             = '#569CD6',
    cyan             = '#4EC9B0'
}

local mode_map = {
    ['n']        = {'#569CD6', ' NORMAL '},
    ['i']        = {'#D16969', ' INSERT '},
    ['R']        = {'#D16969', 'REPLACE '},
    ['c']        = {'#608B4E', 'COMMAND '},
    ['v']        = {'#C586C0', ' VISUAL '},
    ['V']        = {'#C586C0', ' VIS-LN '},
    ['']       = {'#C586C0', 'VIS-BLK '},
    ['s']        = {'#FF8800', ' SELECT '},
    ['S']        = {'#FF8800', ' SEL-LN '},
    ['']       = {'#DCDCAA', 'SEL-BLK '},
    ['t']        = {'#569CD6', 'TERMINAL'},
    ['Rv']       = {'#D16D69', 'VIR-REP '},
    ['rm']       = {'#FF0000', '- More -'},
    ['r']        = {'#FF0000', "- Hit-Enter -"},
    ['r?']       = {'#FF0000', "- Confirm -"},
    ['cv']       = {'#569CD6', "Vim Ex Mode"},
    ['ce']       = {'#569CD6', "Normal Ex Mode"},
    ['!']        = {'#569CD6', "Shell Running"},
    ['ic']       = {'#DCDCAA', 'Insert mode completion |compl-generic|'},
    ['no']       = {'#DCDCAA', 'Operator-pending'},
    ['nov']      = {'#DCDCAA', 'Operator-pending (forced charwise |o_v|)'},
    ['noV']      = {'#DCDCAA', 'Operator-pending (forced linewise |o_V|)'},
    ['noCTRL-V'] = {'#DCDCAA', 'Operator-pending (forced blockwise |o_CTRL-V|) CTRL-V is one character'},
    ['niI']      = {'#DCDCAA', 'Normal using |i_CTRL-O| in |Insert-mode|'},
    ['niR']      = {'#DCDCAA', 'Normal using |i_CTRL-O| in |Replace-mode|'},
    ['niV']      = {'#DCDCAA', 'Normal using |i_CTRL-O| in |Virtual-Replace-mode|'},
    ['ix']       = {'#DCDCAA', 'Insert mode |i_CTRL-X| completion'},
    ['Rc']       = {'#DCDCAA', 'Replace mode completion |compl-generic|'},
    ['Rx']       = {'#DCDCAA', 'Replace mode |i_CTRL-X| completion'},
}

-- See: https://www.nerdfonts.com/cheat-sheet
local icons = {
    bracketleft       = '',
    bracketright      = '',
    vim               = '',
    git               = '',
    gitadd            = ' ',
    -- gitadd         = ' ',
    gitmod            = ' ',
    -- gitmod         = '柳',
    gitdel            = ' ',
    -- gitdel         = ' ',
    lsp               = '',
    lspdiagerror      = ' ',
    -- lspdiagerror   = ' ',
    lspdiagwarning    = ' ',
    -- lspdiagwarning = ' ',
    lspdiaginfo       = ' ',
    -- lspdiaginfo    = ' ',
    lspdiaghint       = ' ',
    dos               = '',
    unix              = '',
    mac               = '',
    typewriteable     = '',
    typereadonly      = '',
    typesize          = '',
    -- typesize       = '',
    typeenc           = '',
    stats             = '⅑',
    -- statsvert      = '⇳',
    statsvert         = '⬍',
    -- statshoriz     = '⇔',
    statshoriz        = '⬌',
    statsspace        = '⯀',
    statstab          = '⯈',
}
-- }}}2

-- highlight, Insert and Rag status functions {{{2
local function highlight(group, fg, bg, gui)
    local cmd = string.format('hi! %s guifg=%s guibg=%s', group, fg, bg)
    local cmdInv = string.format('hi! %sInv guifg=%s guibg=%s', group, bg, fg)

    if gui ~= nil then
        cmd = cmd .. ' gui=' .. gui
    end

    vim.cmd(cmd)
    vim.cmd(cmdInv)
end

local function highlightGroup(group, icon, bg, text)
    highlight('Lualine' .. group .. 'Lft', icon, colors.bg)
    highlight('Lualine' .. group .. 'Mid', icon, bg)
    highlight('Lualine' .. group .. 'Txt', text, bg)
    highlight('Lualine' .. group .. 'End', bg, colors.bg)
end

local function ins_left(component)
    table.insert(lvim.builtin.lualine.sections.lualine_c, component)
end

local function ins_right(component)
    table.insert(lvim.builtin.lualine.sections.lualine_x, component)
end

local function setLineWidthColours()
    local colbg = colors.statsbg
    local linebg = colors.statsiconbg

    if (vim.fn.col('.') > lineLengthError)
    then
        colbg = colors.linelongerrorfg
    elseif (vim.fn.col('.') > lineLengthWarning)
    then
        colbg = colors.linelongwarnfg
    end

    if (vim.fn.strwidth(vim.fn.getline('.')) > lineLengthError)
    then
        linebg = colors.linelongerrorfg
    elseif (vim.fn.strwidth(vim.fn.getline('.')) > lineLengthWarning)
    then
        linebg = colors.linelongwarnfg
    end

    highlight('LinePosHighlightStart',  colbg,            colors.statsbg)
    highlight('LinePosHighlightColNum', colors.statstext, colbg)
    highlight('LinePosHighlightMid',    linebg,           colbg)
    highlight('LinePosHighlightLenNum', colors.statstext, linebg)
    highlight('LinePosHighlightEnd',    linebg,           colors.statsbg)
end

local conditions = {
    display_mode      = function() return vim.fn.winwidth(0) >  60 end,
    display_pos       = function() return vim.fn.winwidth(0) >  80 end,
    display_stats     = function() return vim.fn.winwidth(0) > 100 end,
    display_git       = function() return vim.fn.winwidth(0) > 120 end,
    display_lsp       = function()
        local clients = vim.lsp.get_active_clients()

        if next(clients) == nil then
            return false
        end

        return vim.fn.winwidth(0) > 140
    end,
}
-- }}}2

-- }}}1

    -- Left {{{1

-- Vi Mode {{{2
ins_left {
    function()
        highlight('LualineMode', colors.bg, mode_map[vim.fn.mode()][1])
        highlight('LualineModeText', colors.modetext, mode_map[vim.fn.mode()][1])
        return icons['bracketleft']
    end,
    color = 'LualineModeInv',
    condition = conditions.display_mode,
    left_padding = 1, right_padding = 0
}
ins_left {
    function()
        return mode_map[vim.fn.mode()][2]
    end,
    color = 'LualineModeText',
    condition = conditions.display_mode,
    icon = icons['vim'], left_padding = 0, right_padding = 0
}
ins_left {
    function()
        return icons['bracketright']
    end,
    color = 'LualineModeInv',
    condition = conditions.display_mode,
    left_padding = 0, right_padding = 0
}
-- }}}2

-- Git info {{{2

-- Git Branch Name {{{3
ins_left {
    function()
        highlightGroup('Git', colors.giticonbg, colors.gitbg, colors.gittext)
        return icons['bracketleft']
    end,
    color = 'LualineGitLft',
    condition = conditions.display_git,
    left_padding = 1, right_padding = 0
}
ins_left {
    function() return icons['git'] end,
    color = 'LualineGitMidInv',
    condition = conditions.display_git,
    left_padding = 0, right_padding = 0,
}
ins_left {
    function() return icons['bracketright'] end,
    color = 'LualineGitMid',
    condition = conditions.display_git,
    left_padding = 0, right_padding = 0
}
ins_left {
    'branch',
    color = 'LualineGitTxt',
    condition = conditions.display_git,
    icon='', left_padding = 0, right_padding = 0,
}
-- }}}3

-- Git diffs {{{3
ins_left {
    'diff',
    color = 'LualineGitTxt',
    symbols = {added = icons['gitadd'], modified = icons['gitmod'], removed = icons['gitdel']},
    color_added = {fg = colors.green, bg=colors.gitbg},
    color_modified = {fg = colors.orange, bg=colors.gitbg},
    color_removed = {fg = colors.red, bg=colors.gitbg},
    condition = conditions.display_git,
    icon='', left_padding = 0, right_padding = 0,
}
ins_left {
    function() return icons['bracketright'] end,
    color = 'LualineGitEnd',
    condition = conditions.display_git,
    left_padding = 0, right_padding = 0
}
-- }}}3

-- }}}2

-- Lsp Section {{{2

-- Lsp Client {{{3
ins_left {
    function()
        highlightGroup('Lsp', colors.lspiconbg, colors.lspbg, colors.lsptext)
        return icons['bracketleft']
    end,
    color = 'LualineLspLft',
    condition = conditions.display_lsp,
    left_padding = 1, right_padding = 0
}
ins_left {
    function() return icons['lsp'] end,
    color = 'LualineLspMidInv',
    condition = conditions.display_lsp,
    left_padding = 0, right_padding = 0,
}
ins_left {
    function() return icons['bracketright'] end,
    color = 'LualineLspMid',
    condition = conditions.display_lsp,
    left_padding = 0, right_padding = 0
}
ins_left {
    function()
        local msg = 'No Active Lsp'
        local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then return msg end
        for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                return client.name
            end
        end
        return msg
    end,
    color = 'LualineLspTxt',
    condition = conditions.display_lsp,
    left_padding = 1, right_padding = 1,
}
-- }}}3

-- Diagnostics {{{3
ins_left {
    'diagnostics',
    sources = { "nvim_lsp" },
    symbols = {
        error = icons['lspdiagerror'],
        warn = icons['lspdiagwarning'],
        info = icons['lspdiaginfo'],
        hint = icons['lspdiaghint']
    },
    color_error = {fg = colors.red, bg=colors.lspbg},
    color_warn = {fg = colors.orange, bg=colors.lspbg},
    color_info = {fg = colors.cyan, bg=colors.lspbg},
    color_hint = {fg = colors.green, bg=colors.lspbg},
    color = 'LualineLspMid',
    condition = conditions.display_lsp,
    left_padding = 0, right_padding = 0
}
ins_left {
    function() return icons['bracketright'] end,
    color = 'LualineLspEnd',
    condition = conditions.display_lsp,
    left_padding = 0, right_padding = 0
}
-- }}}3

-- }}}2

-- }}}1

-- Right {{{1

-- Type {{{2
ins_right {
    function()
        highlightGroup('Type', colors.typeiconbg, colors.typebg, colors.typetext)
        return icons['bracketleft']
    end,
    color = 'LualineTypeLft',
    condition = conditions.display_stats,
    left_padding = 0, right_padding = 0
}
ins_right {
    function() return icons[vim.bo.fileformat] or '' end,
    color = 'LualineTypeMidInv',
    condition = conditions.display_stats,
    left_padding = 0, right_padding = 0
}
ins_right {
    function() return icons['bracketright'] end,
    color = 'LualineTypeMid',
    condition = conditions.display_stats,
    left_padding = 0, right_padding = 0
}
-- Padlock if the file is readonly.
ins_right {
    function()
        local lockcolour = colors.typeiconbgrw
        local lockicon = icons['typewriteable']
        local isReadonly = vim.bo.readonly or not vim.bo.modifiable

        if isReadonly
        then
            lockcolour = colors.typeiconbgro
            lockicon = icons['typereadonly']
        end

        highlight('LualineTypeMidLock', lockcolour, colors.typebg)
        return lockicon
    end,
    color = 'LualineTypeMidLock',
    condition = conditions.display_stats,
    left_padding = 1, right_padding = 0
}
-- File name.
ins_right {
    function()
        local filenameColour = colors.typetext
        local isModified = vim.bo.modified
        local isReadonly = vim.bo.readonly or not vim.bo.modifiable

        if isModified
        then
            filenameColour = colors.typetextmodified
        elseif isReadonly then
            filenameColour = colors.typetextreadonly
        end

        highlight('LualineTypeFileName', filenameColour, colors.typebg)
        return '%t'
    end,
    color = 'LualineTypeFileName',
    condition = conditions.display_stats,
    left_padding = 1, right_padding = 0
}
-- File type icon.
ins_right {
    function()
        local filetype = vim.bo.filetype
        if filetype == '' then return '' end
        local filename, fileext = vim.fn.expand("%:t"), vim.fn.expand("%:e")
        local icon = require'nvim-web-devicons'.get_icon(filename, fileext, { default = true })
        return string.format('%s', icon)
    end,
    color = 'LualineTypeMid',
    condition = conditions.display_stats,
    left_padding = 1, right_padding = 0
}
-- File type text.
ins_right {
    function() return vim.bo.filetype end,
    color = 'LualineTypeTxt',
    condition = conditions.display_stats,
    left_padding = 1, right_padding = 0
}
-- File size icon.
ins_right {
    function() return icons['typesize'] end,
    color = 'LualineTypeMid',
    condition = conditions.display_stats,
    left_padding = 1, right_padding = 0
}
-- File size in b, k, m or g.
ins_right {
    function()
        local function format_file_size(file)
            local size = vim.fn.getfsize(file)
            if size <= 0 then return '' end
            local sufixes = {'b', 'k', 'm', 'g'}
            local i = 1
            while size > 1024 do
                size = size / 1024
                i = i + 1
            end

            if (i == 1)
            then
                return string.format('%.0f%s', size, sufixes[i])
            end

            return string.format('%.1f%s', size, sufixes[i])
        end
        local file = vim.fn.expand('%:p')
        if string.len(file) == 0 then return '' end
        return format_file_size(file)
    end,
    color = 'LualineTypeTxt',
    condition = conditions.display_stats,
    left_padding = 1, right_padding = 0
}
ins_right {
    function() return icons['typeenc'] end,
    color = 'LualineTypeMid',
    condition = conditions.display_stats,
    left_padding = 1, right_padding = 0
}
ins_right {
    'encoding',
    color = 'LualineTypeTxt',
    condition = conditions.display_stats,
    left_padding = 1, right_padding = 0
}
ins_right {
    function() return icons['bracketright'] end,
    color = 'LualineTypeEnd',
    condition = conditions.display_stats,
    left_padding = 0, right_padding = 0
}
-- }}}2

-- Cursor Position/Stats Section {{{2
ins_right {
    function()
        highlightGroup('Stats', colors.statsiconbg, colors.statsbg, colors.statstext)
        return icons['bracketleft']
    end,
    color = 'LualineStatsLft',
    condition = conditions.display_pos,
    left_padding = 1, right_padding = 0
}
ins_right {
    function() return icons['stats'] end,
    color = 'LualineStatsMidInv',
    condition = conditions.display_pos,
    left_padding = 0, right_padding = 0,
}
ins_right {
    function() return icons['bracketright'] end,
    color = 'LualineStatsMid',
    condition = conditions.display_pos,
    left_padding = 0, right_padding = 0
}
-- Percentage/Top/Bottom/All
ins_right {
    'progress',
    color = 'LualineStatsTxt',
    condition = conditions.display_pos,
    icon='', left_padding = 0, right_padding = 0,
}
-- Vertical icon.
ins_right {
    function() return icons['statsvert'] end,
    color = 'LualineStatsMid',
    condition = conditions.display_pos,
    icon='', left_padding = 0, right_padding = 0,
}
-- File line position and number of lines.
ins_right {
    function()
        return string.format("%4i/%4i", vim.fn.line('.'), vim.fn.line('$'))
    end,
    color = 'LualineStatsTxt',
    condition = conditions.display_pos,
    icon='', left_padding = 0, right_padding = 0,
}
-- Horiz icon.
ins_right {
    function() return icons['statshoriz'] end,
    color = 'LualineStatsMid',
    condition = conditions.display_pos,
    icon='', left_padding = 0, right_padding = 0,
}
 -- Left bracket for line length.
ins_right {
    function()
        setLineWidthColours()
        return icons['bracketleft']
    end,
    color = 'LinePosHighlightStart',
    condition = conditions.display_pos,
    left_padding = 1, right_padding = 0
}
-- Column and line width
ins_right {
    function()
        return string.format("%4i", vim.fn.col('.'))
    end,
    color = 'LinePosHighlightColNum',
    condition = conditions.display_pos,
    icon='', left_padding = 0, right_padding = 0,
}
ins_right {
    function()
        return icons['bracketleft']
    end,
    color = 'LinePosHighlightMid',
    condition = conditions.display_pos,
    icon = '', left_padding = 0, right_padding = 0
}
ins_right {
    function()
        return string.format("%4i", string.len(vim.fn.getline('.')))
    end,
    color = 'LinePosHighlightLenNum',
    condition = conditions.display_pos,
    icon='', left_padding = 0, right_padding = 0,
}
ins_right {
    function()
        return icons['bracketright']
    end,
    color = 'LinePosHighlightEnd',
    condition = conditions.display_pos,
    left_padding = 0, right_padding = 0
}
ins_right {
    function()
        if vim.bo.expandtab
        then
            return icons['statsspace']
        else
            return icons['statstab']
        end
    end,
    color = 'LualineStatsMid',
    condition = conditions.display_pos,
    icon='', left_padding = 0, right_padding = 0,
}
ins_right {
    function() return ''..vim.bo.shiftwidth end,
    color = 'LualineStatsTxt',
    condition = conditions.display_pos,
    icon='', left_padding = 0, right_padding = 0,
}
ins_right {
    function() return icons['bracketright'] end,
    color = 'LualineStatsEnd',
    condition = conditions.display_pos,
    left_padding = 0, right_padding = 1
}
-- }}}2

-- }}}1

-- local function tprint (tbl, indent)
--   if not indent then indent = 0 end
--   local toprint = string.rep(" ", indent) .. "{\r\n"
--   indent = indent + 2
--   for k, v in pairs(tbl) do
--     toprint = toprint .. string.rep(" ", indent)
--     if (type(k) == "number") then
--       toprint = toprint .. "[" .. k .. "] = "
--     elseif (type(k) == "string") then
--       toprint = toprint  .. k ..  "= "
--     end
--     if (type(v) == "number") then
--       toprint = toprint .. v .. ",\r\n"
--     elseif (type(v) == "string") then
--       toprint = toprint .. "\"" .. v .. "\",\r\n"
--     elseif (type(v) == "table") then
--       toprint = toprint .. tprint(v, indent + 2) .. ",\r\n"
--     else
--       toprint = toprint .. "\"" .. tostring(v) .. "\",\r\n"
--     end
--   end
--   toprint = toprint .. string.rep(" ", indent-2) .. "}"
--   return toprint
-- end

-- local fw = io.open("/home/jim/l.log", "w")
-- fw:write("--------------------")
-- fw:write(tprint(lvim.builtin.lualine))
-- fw:write(tprint(lvim.builtin))
-- fw:write(tprint(lvim))
-- fw.write(tprint(vim.bo.modifiable))

-- if vim.bo.modifiable
-- if vim.api.nvim_get_option('readonly')
-- then
    -- fw:write("modifiable")
-- else
    -- fw:write("NOT modifiable")
-- end

-- fw:close()

