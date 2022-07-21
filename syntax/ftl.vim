" Vim syntax file
" Language:    FreeMarker Template Language (FTL)
" Maintainer:  Stephan Müller <stephan@notatoaster.org>
" Last Change: 2008 Oct 22
"
" Changelog:
" 1.0 Stephan Müller: Original version
" 1.1 tyru:
"   Added Feature:
"     * Highlight html tags.
"       * The user can disable the feature by adding its setting to .vimrc:
"           let g:ftl_no_html = 1
"         The feature enabled by default.
"   Fixed Issues:
"     * Missing boilerplates of vim syntax plugin
"       * b:current_syntax is not defined. vim syntax plugin must define it.
"       * if b:current_syntax is defined, do not load syntax plugin
" 1.2 tyru:
"     * Sorry, remove HTML highlight feature.
"       because ":setfiletype html.ftl" is enough.
"
" Licensed under the MIT License (MIT):
"
" Copyright (c) 2008 Stephan Müller
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
" 
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

syn case match

" directives and interpolations
syn region ftlStartDirective start=+<#+ end=+>+ contains=ftlKeyword, ftlDirective, ftlString, ftlComment
syn region ftlEndDirective start=+</#+ end=+>+ contains=ftlDirective
syn region ftlStartDirectiveAlt start=+\[#+ end=+\]+ contains=ftlKeyword, ftlDirective, ftlString, ftlComment
syn region ftlEndDirectiveAlt start=+\[/#+ end=+\]+ contains=ftlDirective
syn region ftlStartUserDirective start=+<@+ end=+>+ contains=ftlString, ftlComment
syn region ftlEndUserDirective start=+</@+ end=+>+
syn region ftlStartUserDirectiveAlt start=+\[@+ end=+\]+ contains=ftlString, ftlComment
syn region ftlEndUserDirectiveAlt start=+\[/@+ end=+\]+
syn region ftlInterpolation start=+${+ end=+}+
syn region ftlInterpolation2 start=+#{+ end=+}+
syn region ftlString contained start=+"+ end=+"+
syn region ftlComment start=+<#--+ end=+-->+
syn region ftlCommentAlt start=+\[#--+ end=+--\]+

" keywords
syn keyword ftlDirective contained list if else macro import include switch case break
syn keyword ftlDirective contained assign local global nested recurse fallback visit
syn keyword ftlDirective contained function return t rt lt nt ftl
syn keyword ftlKeyword contained as in using

" highlighting

" don't use standard HiLink, it will not work with included syntax files
if version < 508
  command! -nargs=+ FtlHiLink hi link <args>
else
  command! -nargs=+ FtlHiLink hi def link <args>
endif

FtlHiLink ftlKeyword Statement
FtlHiLink ftlDirective Statement
FtlHiLink ftlStartDirective Function
FtlHiLink ftlEndDirective Function
FtlHiLink ftlStartUserDirective Function
FtlHiLink ftlEndUserDirective Function
FtlHiLink ftlInterpolation Constant
FtlHiLink ftlInterpolation2 Constant
FtlHiLink ftlString Constant
FtlHiLink ftlComment Comment

delcommand FtlHiLink

let b:current_syntax = "ftl"
