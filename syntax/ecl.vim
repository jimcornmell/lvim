" Vim syntax file
" Language:     ECL
" Maintainer:   Jim Cornmell
" Last Change:  15 Feb 2023

if exists("b:current_syntax")
	finish
endif

" Force anything NOT matching this file to be highlighted in red.
hi normal                         guifg=Red gui=bold

hi eclKeywordCol                  guifg=Cyan gui=bold
hi eclKeywordReverseCol           guifg=Orange gui=bold
hi eclKeywordSpecialCol           guifg=Magenta gui=bold,italic
hi eclSpecialIdCol                guifg=Pink gui=bold,italic
hi eclSctIdCol                    guifg=White gui=bold
hi eclRangeCol                    guifg=Yellow gui=bold
hi eclCommandCol                  guifg=Yellow
hi eclBracketCol                  guifg=Sienna1
hi eclDescriptionCol              guifg=LightGreen gui=italic
hi eclFilterCol                   guifg=LightBlue

" Caps only.
syn keyword eclKeywordReverse     R
syn match   eclSpecialId          /[ \t\r\n]LOINC\#\d*-\d*/

syn case ignore
syn keyword eclKeywordReverse     reverseof
syn keyword eclKeyword            active
syn keyword eclKeyword            bottom
syn keyword eclKeyword            definition
syn keyword eclKeyword            definitionStatus
syn keyword eclKeyword            definitionStatusId
syn keyword eclKeyword            dialect
syn keyword eclKeyword            dialectId
syn keyword eclKeyword            effectiveTime
syn keyword eclKeyword            history
syn keyword eclKeyword            id
syn keyword eclKeyword            language
syn keyword eclKeyword            match
syn keyword eclKeyword            max
syn keyword eclKeyword            memberOf
syn keyword eclKeyword            min
syn keyword eclKeyword            mod
syn keyword eclKeyword            moduleId
syn keyword eclKeyword            primitive
syn keyword eclKeyword            term
syn keyword eclKeyword            top
syn keyword eclKeyword            type
syn keyword eclKeyword            typeId
syn keyword eclKeyword            wild

syn keyword eclKeyword            def defined
syn keyword eclKeyword            accept acceptable
syn keyword eclKeyword            prefer preferred

syn keyword eclKeyword            childOf childOrSelfOf
syn keyword eclKeyword            parentOf parentOrSelfOf
syn keyword eclKeyword            descendantOf descendantOrSelfOf
syn keyword eclKeyword            ancestorOf ancestorOrSelfOf

syn keyword eclKeywordSpecial     not or and any minus
syn keyword eclKeywordSpecial     fsn fullySpecifiedName
syn keyword eclKeywordSpecial     syn synonym
syn keyword eclKeywordSpecial     true false

syn match   eclDescription        /|[^|]*|/
syn match   eclSctId              /[0-9]\{3,15}[01][012][0-9][ \t\r\n]/
syn match   eclCommand            /[<*:.>!=^]/
syn match   eclBracket            /[)(]/
syn match   eclRange              /\[\s*\d*\s*\.\.\s*\d*\s*\]/
syn match   eclRange              /\[\s*\d*\s*to\s*\d*\s*\]/
syn match   eclRange              /\[\s*\d*\s*\.\.\s*\*\s*\]/
syn match   eclRange              /\[\s*\d*\s*to\s*many\s*\]/
syn match   eclRange              /\[\s*\*\s*\]/
syn match   eclFilter             /{{[^}]*}}/

syn region  eclFilter             start="{" end="}"
syn region  eclComment            start=/\/\*/ end=/\*\//

hi def link eclKeyword            eclKeywordCol
hi def link eclKeywordReverse     eclKeywordReverseCol
hi def link eclKeywordSpecial     eclKeywordSpecialCol
hi def link eclSctId              eclSctIdCol
hi def link eclSpecialId          eclSpecialIdCol
hi def link eclCommand            eclCommandCol
hi def link eclBracket            eclBracketCol
hi def link eclDescription        eclDescriptionCol
hi def link eclFilter             eclFilterCol
hi def link eclRange              eclRangeCol
hi def link eclComment            Comment

let b:current_syntax = "eclfile"

