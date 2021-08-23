-- See: https://github.com/hoob3rt/lualine.nvim

-- Configuration {{{1

-- Settings {{{2
local lineLengthWarning = 80
local lineLengthError = 120

local leftbracket = ""
local rightbracket = ""
local leftbracketthin = ""
local rightbracketthin = ""

lvim.builtin.lualine.options.theme = "iceberg_dark"

lvim.builtin.lualine.sections = {
    lualine_a = {}, lualine_c = {}, lualine_b = {},
    lualine_x = {}, lualine_y = {}, lualine_z = {}
}
lvim.builtin.lualine.inactive_sections = {
    lualine_a = {}, lualine_c = {}, lualine_b = {},
    lualine_x = {}, lualine_y = {}, lualine_z = {}
}
-- }}}2

-- u Function {{{2
local function u(code)
    if type(code) == 'string' then
        code = tonumber('0x' .. code)
    end
    local c = string.char
    if code <= 0x7f then
        return c(code)
    end
    local t = {}

    if code <= 0x07ff then
        t[1] = c(bit.bor(0xc0, bit.rshift(code, 6)))
        t[2] = c(bit.bor(0x80, bit.band(code, 0x3f)))
    elseif code <= 0xffff then
        t[1] = c(bit.bor(0xe0, bit.rshift(code, 12)))
        t[2] = c(bit.bor(0x80, bit.band(bit.rshift(code, 6), 0x3f)))
        t[3] = c(bit.bor(0x80, bit.band(code, 0x3f)))
    else
        t[1] = c(bit.bor(0xf0, bit.rshift(code, 18)))
        t[2] = c(bit.bor(0x80, bit.band(bit.rshift(code, 12), 0x3f)))
        t[3] = c(bit.bor(0x80, bit.band(bit.rshift(code, 6), 0x3f)))
        t[4] = c(bit.bor(0x80, bit.band(code, 0x3f)))
    end

    return table.concat(t)
end
-- }}}2

-- Colours, maps and icons {{{2
local colors = {
    bg              = '#0f1117',
    -- bg              = '#663333',
    modetext        = '#000000',

    giticonbg       = '#FF8800',
    gitbg           = '#5C2C2E',
    gittext         = '#C5C5C5',

    diagerror       = '#F44747',
    diagwarn        = '#FF8800',
    diaghint        = '#4FC1FF',
    diaginfo        = '#FFCC66',

    lspiconbg       = '#68AF00',
    lspbg           = '#304B2E',
    lsptext         = '#C5C5C5',

    typeiconbg      = '#FF8800',
    typebg          = '#5C2C2E',
    typetext        = '#C5C5C5',

    statsiconbg     = '#9CDCFE',
    statsbg         = '#5080A0',
    statstext       = '#000000',

    lineokfg        = '#000000',
    lineokbg        = '#5080A0',
    linelongerrorfg = '#FF0000',
    linelongwarnfg  = '#FFFF00',
    linelongbg      = '#5080A0',

    shortbg         = '#DCDCAA',
    shorttext       = '#000000',

    shortrightbg    = '#3F3F3F',
    shortrighttext  = '#7C4C4E',

    red             = '#D16969',
    yellow          = '#DCDCAA',
    magenta         = '#D16D9E',
    green           = '#608B4E',
    orange          = '#FF8800',
    purple          = '#C586C0',
    blue            = '#569CD6',
    cyan            = '#4EC9B0'
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
    dos            = u 'e70f',
    unix           = u 'f17c',
    mac            = u 'f179',
    vim            = u 'e62b',
    git            = '',
    gitadd         = '',
    -- gitadd      = '',
    gitmod         = '',
    -- gitmod      = '柳',
    gitdel         = '',
    -- gitdel      = '',
    lsp            = '',
    lspdiagerror   = '',
    lspdiagwarning = '',
    lspdiaghint    = '',
    typesize       = '',
    typeenc        = '',
    stats          = '⅑',
    statsvert      = '⇕',
    statshoriz     = '⇔',
    statsspace     = '⯀',
    statstab       = '⯈',
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
    local linebg = colors.statsbg

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

    highlight('LinePosHighlightStart', colbg, colors.statsbg)
    highlight('LinePosHighlightColNum', colors.statstext, colbg)
    highlight('LinePosHighlightMid', linebg, colbg)
    highlight('LineLenHighlightLenNum', colors.statstext, linebg)
    highlight('LinePosHighlightEnd', linebg, colors.statsbg)
end

local conditions = {
  buffer_not_empty = function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end,
  hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end
}
-- }}}2

-- }}}1

    -- Left {{{1

-- Vi Mode {{{2
ins_left {
    function()
        highlight('LualineMode', colors.bg, mode_map[vim.fn.mode()][1])
        highlight('LualineModeText', colors.modetext, mode_map[vim.fn.mode()][1])
        return leftbracket
    end,
    color = 'LualineModeInv',
    left_padding = 1,
    right_padding = 0
}
ins_left {
    function()
        return mode_map[vim.fn.mode()][2]
    end,
    icon = icons['vim'],
    color = 'LualineModeText',
    left_padding = 0,
    right_padding = 0
}
ins_left {
    function()
        return rightbracket
    end,
    color = 'LualineModeInv',
    left_padding = 0,
    right_padding = 0
}
-- }}}2

-- Git info {{{2

-- Git Branch Name {{{3
ins_left {
    function()
        highlightGroup('Git', colors.giticonbg, colors.gitbg, colors.gittext)
        return leftbracket
    end,
    color = 'LualineGitLft',
    left_padding = 1,
    right_padding = 0
}
ins_left {
    function() return icons['git'] end,
    color = 'LualineGitMidInv',
    left_padding = 0,
    right_padding = 0,
}
ins_left {
    function() return rightbracket end,
    color = 'LualineGitMid',
    left_padding = 0,
    right_padding = 0
}
ins_left {
    'branch',
    color = 'LualineGitTxt',
    icon='',
    left_padding = 0,
    right_padding = 0,
}
    -- FIX:
    -- 'diff',
    -- symbols = {added = ' ', modified = '柳 ', removed = ' '},
    -- symbols = {added = '  ', modified = '  ', removed = '  '},
    -- color_added = {fg = colors.green, bg=colors.bg},
    -- color_modified = {fg = colors.orange, bg=colors.bg},
    -- color_removed = {fg = colors.red, bg=colors.bg},
    -- condition = conditions.hide_in_width
ins_left {
    function() return rightbracket end,
    color = 'LualineGitEnd',
    left_padding = 0,
    right_padding = 0
}
-- }}}3

-- }}}2

-- Lsp Section {{{2

-- Lsp Client {{{3
ins_left {
    function()
        highlightGroup('Lsp', colors.lspiconbg, colors.lspbg, colors.lsptext)
        return leftbracket
    end,
    color = 'LualineLspLft',
    left_padding = 1,
    right_padding = 0
}
ins_left {
    function() return icons['lsp'] end,
    color = 'LualineLspMidInv',
    left_padding = 0,
    right_padding = 0,
}
ins_left {
    function() return rightbracket end,
    color = 'LualineLspMid',
    left_padding = 0,
    right_padding = 0
}
ins_left {
    -- FIX: 
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
    left_padding = 1,
    right_padding = 0,
}
-- }}}3

-- Diagnostics {{{3
-- FIX:
ins_left {
    'diagnostics',
    sources = { "nvim_lsp" },
    symbols = { error = " ", warn = " ", info = " ", hint = " " },
    color = 'LualineLspMid',
    left_padding = 0,
    right_padding = 0
}
ins_left {
    function() return rightbracket end,
    color = 'LualineLspEnd',
    left_padding = 0,
    right_padding = 0
}
-- }}}3

-- }}}2

-- }}}1

-- Right {{{1

-- Type {{{2
ins_right {
    function()
        highlightGroup('Type', colors.typeiconbg, colors.typebg, colors.typetext)
        return leftbracket
    end,
    color = 'LualineTypeLft',
    left_padding = 0, right_padding = 0
}
ins_right {
    function() return icons[vim.bo.fileformat] or '' end,
    color = 'LualineTypeMidInv',
    left_padding = 0, right_padding = 0
}
ins_right {
    function() return rightbracket end,
    color = 'LualineTypeMid',
    left_padding = 0, right_padding = 0
}
ins_right {
    function() return vim.fn.bufname("%") end,
    color = 'LualineTypeTxt',
    left_padding = 1, right_padding = 0
}
-- ins_right {
    -- function()
    -- end,
    -- color = 'LualineTypeTxt',
    -- left_padding = 1, right_padding = 0
-- }
ins_right {
    -- FIX: File Type Icon
    -- function() return icons[vim.bo.filetype] end,
    function()
        if (vim.g.readonly) then
            return 'a'
        else
            return 'b'
        end
    end,
    color = 'LualineTypeMid',
    left_padding = 1, right_padding = 0
}
ins_right {
    function() return vim.bo.filetype end,
    color = 'LualineTypeTxt',
    left_padding = 1, right_padding = 0
}
ins_right {
    function() return icons['typesize'] end,
    color = 'LualineTypeMid',
    left_padding = 1, right_padding = 0
}
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
            return string.format('%.1f%s', size, sufixes[i])
        end
        local file = vim.fn.expand('%:p')
        if string.len(file) == 0 then return '' end
        return format_file_size(file)
    end,
    color = 'LualineTypeTxt',
    left_padding = 1, right_padding = 0
}
ins_right {
    function() return icons['typeenc'] end,
    color = 'LualineTypeMid',
    left_padding = 1, right_padding = 0
}
ins_right {
    'encoding',
    color = 'LualineTypeTxt',
    left_padding = 1, right_padding = 0
}
ins_right {
    function() return rightbracket end,
    color = 'LualineTypeEnd',
    left_padding = 0, right_padding = 0
}
-- }}}2

-- Cursor Position/Stats Section {{{2
ins_right {
    function()
        highlightGroup('Stats', colors.statsiconbg, colors.statsbg, colors.statstext)
        return leftbracket
    end,
    color = 'LualineStatsLft',
    left_padding = 1,
    right_padding = 0
}
ins_right {
    function() return icons['stats'] end,
    color = 'LualineStatsMidInv',
    left_padding = 0,
    right_padding = 0,
}
ins_right {
    function() return rightbracket end,
    color = 'LualineStatsMid',
    left_padding = 0,
    right_padding = 0
}
ins_right {
    'progress',
    color = 'LualineStatsTxt',
    icon='',
    left_padding = 0,
    right_padding = 0,
}
ins_right {
    function() return icons['statsvert'] end,
    color = 'LualineStatsMid',
    icon='',
    left_padding = 0,
    right_padding = 0,
}
-- File line position and number of lines.
ins_right {
    function()
        return string.format("%4i/%4i", vim.fn.line('.'), vim.fn.line('$'))
    end,
    color = 'LualineStatsTxt',
    icon='',
    left_padding = 0,
    right_padding = 0,
}
ins_right {
    function() return icons['statshoriz'] end,
    color = 'LualineStatsMid',
    icon='',
    left_padding = 0,
    right_padding = 0,
}
-- Column and line width -- FIX: Colour when too long.
ins_right {
    function()
        return " " .. string.format("%3i", vim.fn.col('.')) .. "/"
    end,
    color = 'LualineStatsTxt',
    icon='',
    left_padding = 0,
    right_padding = 0,
}
ins_right {
    function()
        return ' ' .. string.format("%3i", string.len(vim.fn.getline('.')))
    end,
    color = 'LualineStatsTxt',
    icon='',
    left_padding = 0,
    right_padding = 0,
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
    icon='',
    left_padding = 0,
    right_padding = 0,
}
ins_right {
    function() return ''..vim.bo.shiftwidth end,
    color = 'LualineStatsTxt',
    icon='',
    left_padding = 0,
    right_padding = 0,
}
ins_right {
    function() return rightbracket end,
    color = 'LualineStatsEnd',
    left_padding = 0,
    right_padding = 1
}
-- }}}2

-- }}}1

-- Left Short {{{1
--       table.insert(gls.short_line_left, {
--           ShortSectionStart = {
--               provider = function() return leftbracket  end,
--               highlight = {colors.shortbg, colors.bg}
--           }
--       })
--       table.insert(gls.short_line_left, {
--           ShortSectionSpace = {
--               provider = function() return " "  end, highlight = {colors.shorttext, colors.shortbg}
--           }
--       })
--       table.insert(gls.short_line_left, {
--           LeftShortName = {
--               provider = 'FileTypeName',
--               highlight = {colors.shorttext, colors.shortbg},
--           }
--       })
--       table.insert(gls.short_line_left, {
--           ShortSectionMid = {
--               provider = function() return " " end,
--               highlight = {colors.shortbg, colors.shortbg}
--           }
--       })
--       table.insert(gls.short_line_left, {
--           LeftShortFileName = {
--               provider = 'SFileName',
--               condition = condition.buffer_not_empty,
--               separator_highlight = {colors.shorttext, colors.shortbg},
--               highlight = {colors.shorttext, colors.shortbg},
--           }
--       })
--       table.insert(gls.short_line_left, {
--           ShortSectionEnd = {
--               provider = function() return rightbracket end,
--               highlight = {colors.shortbg, colors.bg}
--           }
--       })
-- }}}1

-- Right Short {{{1
--           BufferIcon = {
--               provider = 'BufferIcon',
--               separator_highlight = {colors.shorttext, colors.bg},
--               highlight = {colors.shortrighttext, colors.bg}
--           }
-- }}}1

