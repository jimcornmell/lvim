set termguicolors

" Use zenburn colour scheme, but make some minor tweaks.
let g:zenburn_italic_Comment=1
" colorscheme zenburn
" Tweaks to zenburn... I only like red to mean a problem.
highlight Boolean         guifg=#bfbfbf          ctermfg=181
highlight Character       guifg=#a3aca3 gui=bold ctermfg=181 cterm=bold
highlight Constant        guifg=#a3dcdc gui=NONE ctermfg=181 cterm=bold
highlight SpecialChar     guifg=#a3a3dc gui=bold ctermfg=181 cterm=bold
highlight String          guifg=#53BB83          ctermfg=174
highlight Tag             guifg=#93e893 gui=bold ctermfg=181 cterm=bold
highlight javaTSVariable  guifg=#CEDF99

" Show white space characters
set listchars=eol:¶,tab:»\ ,trail:·,extends:>,precedes:<,space:·
highlight NonText                                        gui=bold guifg=#49494F
highlight Whitespace                                     gui=bold guifg=#49494F

" Highlight cursor line/column
set colorcolumn=80,120
highlight ColorColumn                          guifg=#ffffff     guibg=#3A3A3A
set cursorcolumn
highlight CursorColumn                         guifg=#ffffff     guibg=#605555
" highlight CursorLine                                             guibg=#2A426B
highlight CursorLine                                             guibg=#0A396F

" highlight CursorColumn                         guifg=#ffffff     guibg=#483d8b
" highlight CursorLine                                             guibg=#605555

" Selected area colour
highlight Visual                  gui=bold     guifg=#ffffff     guibg=#1B51a3

" Search hit colour, also the colour of selection when yanked!
highlight Search                  gui=bold     guifg=Black       guibg=Cyan

" Spelling
highlight SpellBad   guisp=Red    gui=undercurl guifg=NONE
highlight SpellLocal guisp=Orange gui=NONE      guifg=NONE
highlight SpellCap   guisp=Pink   gui=NONE      guifg=NONE
highlight SpellRare  guisp=Yellow gui=NONE      guifg=NONE

" Pop-up and Float menu
highlight Pmenu                                guifg=Wheat       guibg=Black
highlight PmenuSbar                                              guibg=Gray35
highlight PmenuThumb                                             guibg=Wheat
highlight PmenuSel                    gui=bold guifg=Black       guibg=Wheat
highlight NormalFloat                 gui=NONE guifg=Wheat       guibg=#343434
highlight NormalNC                                               guibg=Black

" Line number colour
highlight LineNr                               guifg=RoyalBlue1  guibg=Gray19
highlight CursorLineNr                         guifg=Yellow      guibg=Gray19

" Diff colours : http://vimdoc.sourceforge.net/htmldoc/diff.html
highlight DiffAdd                              guifg=#999999     guibg=#115511
highlight DiffChange                                             guibg=#222266
highlight DiffDelete                           guifg=#552222     guibg=#552222
highlight DiffText                             guifg=#CC2222     guibg=#222266

" Git changes and margins
highlight GitSignsAdd                          guifg=#608b4e     guibg=#343434
highlight GitSignsDelete                       guifg=#D16969     guibg=#343434
highlight GitSignsChange                       guifg=#FF8800     guibg=#343434
highlight GitSignsCurrentLineBlame             guifg=Black       guibg=#0A396F
highlight default link gitblame GitSignsCurrentLineBlame

" Tab bar at top!
highlight BufferCurrent                        guifg=Black       guibg=#CCCCCC
highlight BufferCurrentIndex                   guifg=Black       guibg=#CCCCCC
highlight BufferCurrentSign                    guifg=Black       guibg=#CCCCCC
highlight BufferCurrentMod                     guifg=#FF4422     guibg=#CCCCCC
highlight BufferInactive                       guifg=White       guibg=#333333
highlight BufferInactiveIndex                  guifg=White       guibg=#333333
highlight BufferInactiveSign                   guifg=White       guibg=#333333
highlight BufferInactiveMod                    guifg=#FF4422     guibg=#333333

" LSP colours
highlight LspDiagnosticsDefaultError           guifg=#F44747
highlight LspDiagnosticsDefaultWarning         guifg=#FF8800
highlight LspDiagnosticsDefaultInformation     guifg=#FFCC66
highlight LspDiagnosticsDefaultHint            guifg=#4FC1FF

highlight LspDiagnosticsFloatingError          guifg=#F44747
highlight LspDiagnosticsFloatingWarning        guifg=#FF8800
highlight LspDiagnosticsFloatingWarn           guifg=#FF8800
highlight LspDiagnosticsFloatingInformation    guifg=#FFCC66
highlight LspDiagnosticsFloatingInfor          guifg=#FFCC66
highlight LspDiagnosticsFloatingHint           guifg=#4FC1FF

" LSP highlight in left margin.
highlight LspDiagnosticsSignError              guifg=#F44747     guibg=Gray19
highlight LspDiagnosticsSignWarning            guifg=#FF8800     guibg=Gray19
highlight LspDiagnosticsSignInformation        guifg=#FFCC66     guibg=Gray19
highlight LspDiagnosticsSignHint               guifg=#4FC1FF     guibg=Gray19

" LSP In-line error highlight.
highlight LspDiagnosticsUnderlineError         guifg=Black       guibg=#F44747
highlight LspDiagnosticsUnderlineWarning       guifg=Black       guibg=#FF8800
highlight LspDiagnosticsUnderlineInformation   guifg=Black       guibg=#FFCC66
highlight LspDiagnosticsUnderlineHint          guifg=Black       guibg=#4FC1FF

" LSP error on right side.
highlight LspDiagnosticsVirtualTextError       guifg=#F44747
highlight LspDiagnosticsVirtualTextWarning     guifg=#FF8800
highlight LspDiagnosticsVirtualTextInformation guifg=#FFCC66
highlight LspDiagnosticsVirtualTextHint        guifg=#4FC1FF

" Matching parenthesis
highlight MatchParen           gui=bold        guifg=Black       guibg=Cyan

" Highlight text over 120 chars
highlight longLine                                               NONE
call matchadd('longLine', '.\%>121v', 1)

" Highlight git merge conflict markers.
highlight gitMergeConflictStart                guifg=Black       guibg=Red
call matchadd('gitMergeConflictStart', '^<\{7\} HEAD.*$', 60)

highlight gitMergeConflictMid                  guifg=Yellow      guibg=Red
call matchadd('gitMergeConflictMid', '^=\{7\}$', 60)

highlight gitMergeConflictEnd                  guifg=Black       guibg=Red
call matchadd('gitMergeConflictEnd', '^>\{7\} .*$', 60)

" Highlight spaces at end of line:
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
highlight extraWhitespace                                        guibg=Red
call matchadd('extraWhitespace', '/^\s*\t\s*\|\s\+\%#\@<!$', 100)

" Highlight #! lines... Both good and bad.
highlight sheBangGood gui=bold,italic,underline guifg=#7fdf7f    guibg=NONE
call matchadd('sheBangGood', '^#!/usr/bin/env \(bash\|-S bash -e\|sh\|python3\|zsh\|groovy\|perl\)$', 20)

highlight sheBangBad                  gui=bold guifg=#E46600     guibg=NONE
call matchadd('sheBangBad', '^#!.*')

highlight IncSearch      gui=bold              guibg=#3f1f1f

highlight HighlightUrl   gui=underline,bold    guifg=#0099FF     guisp=#0099FF

highlight Tag            gui=bold              guifg=Pink
highlight Todo           gui=bold              guifg=LightGreen

" Highlight folds
highlight Folded                               guifg=#777777     guibg=#000000
set foldcolumn=1

" Highlight markers.
highlight markerStart                          guifg=#777777     guibg=#000000
highlight markerEnd                            guifg=#777777     guibg=#000000
call matchadd('markerStart', '^.*{\{3\}.*$', 50)
call matchadd('markerEnd', '^.*}\{3\}.*$', 50)

" Highlight my marker lines, Lines ending in 5 or more "." or "-" or "#" or "="
" .....
" -----
" #####
" =====
" *****
highlight markerLineCommentAmber               guifg=#000000     guibg=#999900
call matchadd('markerLineCommentAmber',     '^.*\.\{5,\}$', 50)
highlight markerLineCommentGreen               guifg=#000000     guibg=#009900
call matchadd('markerLineCommentGreen',     '^.*[-#]\{5,\}$', 50)
highlight markerLineCommentRed                 guifg=#000000     guibg=#990000
call matchadd('markerLineCommentRed',       '^.*=\{5,\}$', 50)
highlight markerLineCommentBrightRed           guifg=#000000     guibg=#FF0000
call matchadd('markerLineCommentBrightRed', '^.*\*\{5,\}$', 50)

" Hop colours.
highlight HopNextKey                  gui=bold guifg=#ff007c
highlight HopNextKey1                 gui=bold guifg=#00dfff
highlight HopNextKey2                          guifg=#2b8db3
highlight HopUnmatched                         guifg=#666666
