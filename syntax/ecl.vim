" Vim syntax file
" Language:     ECL
" Maintainer:   Jim Cornmell
" Last Change:  15 Feb 2023

if exists("b:current_syntax")
	finish
endif

command -nargs=+ HiLink hi def link <args>

hi eclKeywordCol             guifg=Cyan
hi eclSctIdCol               guifg=White gui=bold
hi eclCommandCol             guifg=Yellow
hi eclBracketCol             guifg=Sienna1
hi eclDescriptionCol         guifg=LightGreen gui=italic
hi eclFilterCol              guifg=LightBlue

syn keyword eclKeyword       MINUS
syn keyword eclKeyword       OR
syn keyword eclKeyword       AND
syn match   eclSctId         /\d*/
syn match   eclCommand       /[<*:.>!=^]/
syn match   eclBracket       /[)(]/
syn match   eclDescription   /|[^|]*|/
syn match   eclFilter        /{{[^}]*}}/
syn match   eclComment       /\/\*.*\*\//

HiLink eclKeyword            eclKeywordCol
HiLink eclSctId              eclSctIdCol
HiLink eclCommand            eclCommandCol
HiLink eclBracket            eclBracketCol
HiLink eclDescription        eclDescriptionCol
HiLink eclFilter             eclFilterCol
HiLink eclComment            Comment

delcommand HiLink

let b:current_syntax = "eclfile"

