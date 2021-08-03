" LOG syntax file
" Language:     LOG
" Maintainer:   Jim Cornmell
" Last Change:  20 Jan 2017
"
if exists("b:current_syntax")
	finish
endif

" syntax match logDate /^\d\{4}-\d\{2}-\d\{2}/ containedin=logDateTimeTypeLine nextgroup=logTime skipwhite
" syntax match logTime /\d\{2}:\d\{2}:\d\{2},\d\{3}/ containedin=logDateTimeTypeLine,logTrace
" syntax match logDateTimeTypeLine /^\d\{4}-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2},\d\{3}.*/
" syntax region logTrace matchgroup=logErrorStartLine start=/^\d\{4}-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2},\d\{3}.*ERROR.*/ms=s,rs=e+1 end=/^\d\{4}-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2},\d\{3}/me=s-1,he=s-1,re=s-1

syn match noError        "no error"
syn match logError       "\[ERROR\]"
syn match logError       "exception"
syn match logError       "error"
syn match logError       "failure"
syn match logError       "failed"
syn match logError       "BUILD FAILED"
syn match logJavaError   "^java.*Exception.*"
syn match logJavaError   "^java.*Error.*"
syn match logJavaError   "^\tat .*"
syn match logCCJavaError "^\tat com.cc.*"
syn match logCCJavaError "^\tat com.costcutter.*"
syn match logWarn        "\[WARN\]"
syn match logWarn        "\[WARNING\]"
syn match logWarn        "warning"
syn match logInfo        "\[INFO\]"
syn match logDebug       "\[QUIET\]"
syn match logDebug       "\[LIFECYCLE\]"
syn match logDebug       "\[DEBUG\]"
syn match logTimestamp   "^\d\d:\d\d:\d\d.\d\d\d"
syn match testError      "TEST FAILED:"
syn match testStart      "TEST STARTED:"
syn match testPass       "TEST PASSED:"

hi TypeError       guifg=#EEEEEE guibg=Red
hi TypeJavaError   guifg=#EEEEEE guibg=Brown
hi TypeCCJavaError guifg=Yellow  guibg=Red
hi TypeAmber       guifg=#EEEEEE guibg=Orange
hi TypeGreen       guifg=#EEEEEE guibg=DarkGreen
hi TypeGrey        guifg=#EEEEEE guibg=DarkGrey
hi TypeTime        guifg=#EEEEEE guibg=DarkGrey
hi TypeTestStart   guifg=Black   guibg=LightBlue
hi TypeTestError   guifg=Black   guibg=Red
hi TypeTestPass    guifg=Black   guibg=Green
hi TypeNormal      guifg=Black

command -nargs=+ HiLink hi def link <args>

HiLink logError           TypeError
HiLink logJavaError       TypeJavaError
HiLink logCCJavaError     TypeCCJavaError
HiLink logWarn            TypeAmber
HiLink logInfo            TypeGreen
HiLink logDebug           TypeGrey
HiLink logTimestamp       TypeTime
HiLink testError          TypeTestError
HiLink testStart          TypeTestStart
HiLink testPass           TypeTestPass
HiLink noError            TypeNormal

hi ExtraWhitespace        guibg=Brown
match ExtraWhitespace /^\s*\t\s*\|\s\+\%#\@<!$/
set listchars=
set nolist

delcommand HiLink

let b:current_syntax = "log4j"

