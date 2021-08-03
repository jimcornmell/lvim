" Vim syntax file
" Language:	Cel, Celestia scripts.
" Maintainer:	Jim Cornmell <jim at cornmell com>
" URL:		www cornmell com
" Last Change:	2010 Nov 01

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
  finish
endif
  let main_syntax = 'cel'
endif

syn case ignore

syn region celComment start="#" end="$" contains=@Spell
syn region celString start="\"" end="\""

syn keyword celKeyword cancel
syn keyword celKeyword center
syn keyword celKeyword changedistance
syn keyword celKeyword follow
syn keyword celKeyword goto
syn keyword celKeyword gotoloc
syn keyword celKeyword labels
syn keyword celKeyword orbit
syn keyword celKeyword print
syn keyword celKeyword renderflags
syn keyword celKeyword select
syn keyword celKeyword set
syn keyword celKeyword synchronous
syn keyword celKeyword timerate
syn keyword celKeyword wait
syn keyword celKeyword gotolonglat

syn keyword celArgument axis
syn keyword celArgument clear
syn keyword celArgument distance
syn keyword celArgument duration
syn keyword celArgument name
syn keyword celArgument object
syn keyword celArgument origin
syn keyword celArgument position
syn keyword celArgument rate
syn keyword celArgument row
syn keyword celArgument set
syn keyword celArgument text
syn keyword celArgument time
syn keyword celArgument up
syn keyword celArgument upframe
syn keyword celArgument value
syn keyword celArgument longitude
syn keyword celArgument latitude

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_cel_syntax_init")
  if version < 508
    let did_cel_syntax_init = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

   " Comments
   HiLink celComment      Comment
   " Constants and denotations
   HiLink celString   String
   "HiLink xxx Character
   "HiLink xxx Number
   "HiLink xxx Boolean
   "HiLink xxx Float
   " Identifiers
   " Statements
   HiLink celKeyword Keyword
   "HiLink xxx Conditional
   "HiLink xxx Label
   " Generic Preprocessing
   "HiLink xxx Include
   "HiLink xxx PreProc
   " Type
   HiLink celArgument    Type
   "HiLink xxx Type
   "HiLink xxx Typedef
   " Special
   "HiLink xxx Special
   " Error
   " Todo

  delcommand HiLink
endif

let b:current_syntax = "cel"

