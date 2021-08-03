" Vim syntax file
" Language:   AUDDIS file
" Maintainer: Jim Cornmell
" Created:    10 Apr 2021

if exists("b:current_syntax")
    finish
endif

syn match RetailerCode  /^\d\{6}\%<8v/
syn match RetailerName  /\%>6v.\{31}\%<39v/
syn match AccountNumber /\%>37v\d\{8}\%<47v/
syn match Space         /\%>45v \%<48v/
syn match SortCode      /\%>46v\d\d-\d\d-\d\d\%<56v/
syn match Space         /\%>54v.*\%<69v/
syn match ZeroNandN     /\%>67v.*\%<73v/
syn match TooLong       /\%>71v.*$/

hi ColourRetailerCode   guifg=Black guibg=LightGreen
hi ColourRetailerName   guifg=Black guibg=Magenta
hi ColourAccount        guifg=Black guibg=Cyan
hi ColourSortCode       guifg=Black guibg=LightRed
hi ColourSpace          guifg=Black guibg=Grey75
hi ColourZeroNandN      guifg=Black guibg=Orange
hi ColourTooLong        guifg=Black guibg=Red

command -nargs=+ HiLink hi def link <args>

HiLink RetailerCode     ColourRetailerCode
HiLink RetailerName     ColourRetailerName
HiLink AccountNumber    ColourAccount
HiLink SortCode         ColourSortCode
HiLink Space            ColourSpace
HiLink ZeroNandN        ColourZeroNandN
HiLink TooLong          ColourTooLong

delcommand HiLink

let b:current_syntax = "auddis"
