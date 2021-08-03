" Vim syntax file
" Language:   TTT file
" Maintainer: Jim Cornmell
" Created:    4 May 2021

if exists("b:current_syntax")
    finish
endif

syn match Store            /^.*\%<7v/
syn match FacilityID       /\%>5v.*\%<20v/
syn match CustomerNumber   /\%>18v.*\%<28v/
syn match InstoreData      /\%>26v.*\%<36v/
syn match aUIs             /\%>34v.*\%<54v/
syn match HubNumber        /\%>52v.*\%<60v/
syn match InvoiceNumber    /\%>58v.*\%<67v/
syn match OrderNumber      /\%>65v.*\%<72v/
syn match Total            /^T\d\{12}$/

hi ColourStore             guifg=Black guibg=PeachPuff
hi ColourFacilityID        guifg=Black guibg=Ivory
hi ColourCustomerNumber    guifg=Black guibg=LightGray
hi ColourInstoreData       guifg=Black guibg=PaleGoldenRod
hi ColouraUIs              guifg=Black guibg=Burlywood1
hi ColourHubNumber         guifg=White guibg=Sienna1
hi ColourInvoiceNumber     guifg=Black guibg=Gray48
hi ColourOrderNumber       guifg=Black guibg=Khaki
hi ColourTotal             guifg=Black guibg=Red

command -nargs=+ HiLink hi def link <args>

HiLink Store               ColourStore
HiLink FacilityID          ColourFacilityID
HiLink CustomerNumber      ColourCustomerNumber
HiLink InstoreData         ColourInstoreData
HiLink aUIs                ColouraUIs
HiLink HubNumber           ColourHubNumber
HiLink InvoiceNumber       ColourInvoiceNumber
HiLink OrderNumber         ColourOrderNumber
HiLink Total               ColourTotal

delcommand HiLink

let b:current_syntax = "ttt"
