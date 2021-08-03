" Vim syntax file
" Language:     EDI
" Maintainer:   Jim Cornmell
" Created:  20 Jan 2017

if exists("b:current_syntax")
    finish
endif

syn keyword ediKeywords    GS GE SE ST

syn match ediCDT         "^CDT="
syn match ediCLO         "^CLO="
syn match ediDNA         "^DNA=.*$"
syn match ediEND         "^END=.*$"
syn match ediFDT         "^FDT="
syn match ediFIL         "^FIL="
syn match ediILD         "^ILD="
syn match ediIRF         "^IRF=\d\+"
syn match ediMHD         "^MHD=.*$"
syn match ediMTR         "^MTR=.*$"
syn match ediODD         "^ODD=.*$"
syn match ediSDT         "^SDT="
syn match ediSTL         "^STL="
syn match ediSTX         "^STX=.*$"
syn match ediTLR         "^TLR="
syn match ediTOT         "^TOT="
syn match ediTYP         "^TYP="
syn match ediVRS         "^VRS="
syn match ediPYT         "^PYT="
syn match surcharge      "SURCHARGE[^+]\+"

syn match ediSeperators  "\*"
syn match ediSeperators  "+"
syn match ediTerminators "\~"
syn match ediTerminators ":"
syn match ediNumbers     "[0-9]"
syn match ediText        "+[A-Za-z][^+]\+"
syn match ediApos        "'"
syn match ediDate        "[^0-9]\@<=2\d[01]\d[0123]\d[^0-9]\@="
syn match ediVatS        "+\@<=S+\@="
syn match ediVatM        "+\@<=M+\@="
syn match ediVatZ        "+\@<=Z+\@="

hi Comment         guifg=White
hi Type            guifg=LightGreen
hi TypeIrf         guifg=#00FFFF gui=bold
hi TypeOdd         guifg=Magenta
hi TypeDna         guifg=Red
hi Apos            guifg=Red gui=bold
hi Terminator      guifg=LightBlue gui=bold
hi Operator        guifg=LightBlue gui=bold
hi Number          guifg=LightRed
hi Date            guifg=Yellow gui=bold
hi Text            guifg=Cyan
hi VatS            guifg=Green gui=bold
hi VatM            guifg=#8800FF gui=bold
hi VatZ            guifg=#0088FF gui=bold
hi TypeHighlight   guifg=Orange
hi TypeDivideStart guifg=Green gui=bold
hi TypeDivideEnd   guifg=Brown gui=bold

command -nargs=+ HiLink hi def link <args>

HiLink ediCDT           Type
HiLink ediCLO           Type
HiLink ediDNA           TypeDna
HiLink ediEND           TypeHighlight
HiLink ediFDT           Type
HiLink ediFIL           Type
HiLink ediILD           Type
HiLink ediIRF           TypeIrf
HiLink ediMHD           TypeDivideStart
HiLink ediMTR           TypeDivideEnd
HiLink ediODD           TypeOdd
HiLink ediSDT           Type
HiLink ediSTL           Type
HiLink ediSTX           TypeHighlight
HiLink ediTLR           Type
HiLink ediTOT           Type
HiLink ediTYP           Type
HiLink ediVRS           Type
HiLink ediPYT           Type
HiLink ediKeywords      Comment
HiLink ediSeperators    Operator
HiLink ediTerminators   Terminator
HiLink ediNumbers       Number
HiLink ediDate          Date
HiLink ediVatS          VatS
HiLink ediVatM          VatM
HiLink ediVatZ          VatZ
HiLink ediText          Text
HiLink ediApos          Apos
HiLink surcharge        TypeHighlight

delcommand HiLink

let b:current_syntax = "edifile"

