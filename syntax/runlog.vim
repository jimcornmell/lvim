" Rundeck LOG syntax file
" Language:     Rundeck LOG
" Maintainer:   Jim Cornmell
" Last Change:  24 Oct 2020
"
if exists("b:current_syntax")
	finish
endif

" syntax match logDate /^\d\{4}-\d\{2}-\d\{2}/ containedin=logDateTimeTypeLine nextgroup=logTime skipwhite
" syntax match logTime /\d\{2}:\d\{2}:\d\{2},\d\{3}/ containedin=logDateTimeTypeLine,logTrace
" syntax match logDateTimeTypeLine /^\d\{4}-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2},\d\{3}.*/
" syntax region logTrace matchgroup=logErrorStartLine start=/^\d\{4}-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2},\d\{3}.*ERROR.*/ms=s,rs=e+1 end=/^\d\{4}-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2},\d\{3}/me=s-1,he=s-1,re=s-1

command -nargs=+ HiLink hi def link <args>

syn match noError        "no error"
syn match logError       "\[ERROR\]"
syn match logError       " ERROR "
syn match logError       "exception"
syn match logError       "error"
syn match logError       "failure"
syn match logError       "failed"
syn match logError       "Exception "
syn match logJavaError   "^java.*Exception.*"
syn match logJavaError   "^java.*Error.*"
syn match logJavaError   "^\tat .*"
syn match logCCJavaError "^\tat com.cc.*"
syn match logCCJavaError "^\tat com.costcutter.*"
syn match logWarning     " WARN "
syn match logWarning     "\[WARN\]"
syn match logWarning     "\[WARNING\]"
syn match logWarning     "warning"
syn match logInformation "\[INFO\]"
syn match logInformation " INFO "
syn match logDebug       "\[QUIET\]"
syn match logDebug       "\[LIFECYCLE\]"
syn match logDebug       "\[DEBUG\]"
syn match logDebug       " DEBUG "
syn match logTimestamp   "^\d\d:\d\d:\d\d.\d\d\d "

hi TypeError              guifg=Black guibg=Red
hi TypeJavaError          guifg=Black guibg=Brown
hi TypeCCJavaError        guifg=Black guibg=Brown
hi TypeWarning            guifg=Black guibg=Orange
hi TypeInformation        guifg=#EEEEEE guibg=DarkGreen
hi TypeDebug              guifg=#EEEEEE guibg=DarkGrey
hi TypeTime               guifg=Cyan
hi TypeNoError            guifg=Black
HiLink logError           TypeError
HiLink logJavaError       TypeJavaError
HiLink logCCJavaError     TypeCCJavaError
HiLink logWarning         TypeWarning
HiLink logInformation     TypeInformation
HiLink logDebug           TypeDebug
HiLink logTimestamp       TypeTime
HiLink noError            TypeNoError

hi ExtraWhitespace        guibg=Brown
match ExtraWhitespace /^\s*\t\s*\|\s\+\%#\@<!$/

set listchars=
set nolist

delcommand HiLink

let b:current_syntax = "runlog"

