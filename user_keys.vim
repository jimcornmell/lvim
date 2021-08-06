" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" <Ctrl-c> and yy copies to clipboard, paste with <shift-insert>
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
vmap yy    y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>

" Make current file executable using Eunuch.
map <silent> <A-e> :Chmod a+x<CR>:echo "File is now executable!"<CR>

" Execute current file, line and vim command.
map <silent> <A-r> :w<CR>:!%:p<CR>
nmap gr :call ExecuteCurrentLine()<CR>
nmap gt :exe getline('.')<CR>

" gq to format selection as 80 char justified.
" set formatoptions q
set formatprg=par\ -w79
map gw gqip

noremap <silent> gs :call DeleteTrailingWhiteSpace()<CR>

" Saves a few key presses.
" nnoremap ; :
map <C-s> :w<CR>

" Highlight column in CSV
command! -nargs=1 Csv :call CSVH(<args>)

" SQL and Java flipping.
vnoremap <A-s> :!$HOME/bin/sak sqlflip<CR>

" Run macro q with just typing Q.
nnoremap Q @q

" Toggle comment and move to next line, or comment selection.
nmap <C-_> :CommentToggle<CR>j
vmap <C-_> :CommentToggle<CR>gv
" In Neovide use this line instead!
nmap <C-/> :CommentToggle<CR>j
vmap <C-/> :CommentToggle<CR>gv

" Move lines up and down using alt-up/down.
nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
inoremap <A-Up> <Esc>:m .-2<CR>==gi
inoremap <A-Down> <Esc>:m .+1<CR>==gi
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv

" Jump
nmap gj :call JumpToSelection()<CR>

" Function keys.
map <silent> <F1> :!xdg-open $HOME/.config/lvim/cheatsheet.html<CR>
map <silent> <F2> :call FoldingToggle()<CR>
map <silent> <F3> :call ToggleAll()<CR>
map <F4> :NvimTreeToggle<CR>
" F5 reserved for kitty, open selected.
" Use to replace last :s command on a range
" * = last range.
" & = last s/foo/bar/
map <F6> :*&<CR>
" Diff current buffer and the next.
map <F7> :vsplit<CR>:bnext<CR>:windo diffthis<CR>
map <F8> :LazyGit<CR>
map <F9> :Telescope find_files<CR>
" F10 reserved for kitty, open new terminal.
" F11 reserved for kitty, full screen.
map <F12> :SymbolsOutline<CR>

" Keep X as delete backwards, rather then close buffer, I prefer to use :bd
nunmap X

