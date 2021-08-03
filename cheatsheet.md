The following are a mixture of standard key bindings and my own, which I find
useful like <kbd>Q</kbd>, <kbd>g</kbd><kbd>j</kbd>, <kbd>Alt-Up</kbd> etc. I've marked mine and other non-default
(from plugins) key-bindings with :heavy_check_mark: in the table below.

| Key     | Action  |
| ------: | :-------|
|__Help__|[`:h topic`](https://neovim.io/doc/user/usr_02.html#02.8)|
|`:h quickref`|                                                                Quick reference|
|<kbd>Ctrl-]</kbd>|                                                            Follow help link|
|<kbd>Ctrl-t</kbd>|                                                            Back to previous|
|__Modes__|[`:h vim-modes`](https://neovim.io/doc/user/intro.html#vim-modes)|
The far left of the tagline at the bottom of the screen is colour coded according to the mode
|Normal (Blue)|Enter all the normal editor commands|
|Insert (Red)|<kbd>i</kbd>,<kbd>a</kbd>,<kbd>o</kbd> etc. Text is inserted|
|Visual (Purple)|Movement commands extend highlighted area.  A non-movement command is executed against selection|
|Block (Yellow)|Select a rectangular region|
|Command (Green)|<kbd>:</kbd> Enter a command at the bottom<br/> <kbd>/</kbd> Search forwards<br/> <kbd>?</kbd> Search backwards|
|__File Commands__|[`:h editing.txt`](https://neovim.io/doc/user/editing.html)|
|`:e file`|                                                                    Open `file`|
|`:enew`|                                                                      New file|
|`:e .` or <kbd>-</kbd> or <kbd>F12</kbd>|                                     Explore dir, opens Ranger|
|`:e sftp://me@example.com/myfile`|                                            Open sftp|
|`:e!`|                                                                        Revert to saved version|
|<kbd>Ctrl-s</kbd>|                                                            :heavy_check_mark: Save the current file|
|`:w file`|                                                                    Save to `file`|
|`:wq` or <kbd>Z</kbd><kbd>Z</kbd>|                                            Save and close|
|`:q!` or <kbd>Z</kbd><kbd>Q</kbd>|                                            Close without saving|
|`:qa`|                                                                        Close all|
|`:qa!`|                                                                       Close all, don't save|
|`:SudoWrite`|                                                                 [Vim-Eunuch](https://github.com/tpope/vim-eunuch) plug-in : Write even if you don't have permission|
|__Motion/Movement__|[`:h motion.txt`](https://neovim.io/doc/user/motion.html)|
|<kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd>, <kbd>l</kbd>|                       Char left, down, up, right|
|<kbd>0</kbd>, <kbd>g</kbd><kbd>m</kbd>, <kbd>$|</kbd>                         Start, middle, end of line|
|<kbd>^</kbd>|                                                                 First non-white character of line|
|<kbd>Enter</kbd>|                                                             First non-white char of next line|
|<kbd>*</kbd>, <kbd>#</kbd>|                                                   Find forwards/backwards word under cursor|
|<kbd>b</kbd>, <kbd>w</kbd>|                                                   Word left, right|
|<kbd>B</kbd>, <kbd>W</kbd>|                                                   White spaced word left, right|
|<kbd>f</kbd><kbd>x</kbd>, <kbd>F</kbd><kbd>x</kbd>|                           Next, previous character `x`|
|<kbd>H</kbd>, <kbd>M</kbd>, <kbd>L</kbd>|                                     Top, middle, bottom of screen|
|<kbd>z</kbd><kbd>z</kbd>, <kbd>z</kbd><kbd>t</kbd>, <kbd>z</kbd><kbd>b</kbd>| View line center, top, bottom|
|<kbd>Ctrl-e</kbd>, <kbd>Ctrl-y</kbd>|                                         Move up/down, keeping cursor on same line|
|<kbd>Ctrl-f</kbd>, <kbd>Ctrl-b</kbd>|                                         Next, previous screen|
|<kbd>Ctrl-d</kbd>, <kbd>Ctrl-u</kbd>|                                         Next, previous half-screen|
|<kbd>g</kbd><kbd>g</kbd>, <kbd>G</kbd>|                                       Start, end of file|
|<kbd>g</kbd><kbd>;</kbd>, <kbd>g</kbd><kbd>,</kbd>|                           Previous, next change|
|<kbd>%</kbd>|                                                                 Jump forward or backwards to matching brace|
|<kbd>{</kbd>, <kbd>}</kbd>|                                                   Next, previous empty line|
|<kbd>(</kbd>, <kbd>)</kbd>|                                                   Next, previous sentence|
|`n`<kbd>G</kbd>, `:n`|                                                        Goto line number `n`|
|`n`<kbd>\|</kbd>|                                                             Column `n`|
|<kbd>]</kbd><kbd>s</kbd>, <kbd>[</kbd><kbd>s</kbd>|                           Next, last misspelled|
|<kbd>g</kbd><kbd>d</kbd>|                                                     Goto definition|
|<kbd>g</kbd><kbd>f</kbd>|                                                     Open file under cursor|
|<kbd>g</kbd><kbd>j</kbd>|                                                     :heavy_check_mark: JUMP!  <ul> <li>If line contains a url jump to this in browser.  <li>else if line contains a hex colour, `#AABBCC`jump to that colour on [ColorHexa.com](https://www.colorhexa.com) <li>Else if line contains a github project name of the format `user/repository` then jump to this GitHub project.  <li>Else if the word looks like a ticket id, open that in your browser (only works with Jira at the moment)<li>Else if try and open the current word in [cheat.sh](https://cheat.sh) uses the buffers language to help get the right command.  </ul>|
|__Jumping__||
|<kbd>leader</kbd><kbd>j</kbd><kbd>a</kbd>|                                    :heavy_check_mark: Jump to artifact in Artifactory/jFrog|
|<kbd>leader</kbd><kbd>j</kbd><kbd>c</kbd>|                                    :heavy_check_mark: Jump to Jenkins|
|<kbd>leader</kbd><kbd>j</kbd><kbd>e</kbd>|                                    :heavy_check_mark: Jump to reports|
|<kbd>leader</kbd><kbd>j</kbd><kbd>h</kbd>|                                    :heavy_check_mark: Open help page|
|<kbd>leader</kbd><kbd>j</kbd><kbd>i</kbd>|                                    :heavy_check_mark: Jump to live Rundeck job|
|<kbd>leader</kbd><kbd>j</kbd><kbd>j</kbd>|                                    :heavy_check_mark: Same as gj|
|<kbd>leader</kbd><kbd>j</kbd><kbd>l</kbd>|                                    :heavy_check_mark: Jump to Lint output, SonarQube|
|<kbd>leader</kbd><kbd>j</kbd><kbd>m</kbd>|                                    :heavy_check_mark: Open manual page|
|<kbd>leader</kbd><kbd>j</kbd><kbd>n</kbd>|                                    :heavy_check_mark: Jump to notes|
|<kbd>leader</kbd><kbd>j</kbd><kbd>r</kbd>|                                    :heavy_check_mark: Jump to repository|
|<kbd>leader</kbd><kbd>j</kbd><kbd>s</kbd>|                                    :heavy_check_mark: Show jira information|
|<kbd>leader</kbd><kbd>j</kbd><kbd>t</kbd>|                                    :heavy_check_mark: Jump to ticket|
|__Insert Mode__|[`:h inserting`](https://neovim.io/doc/user/insert.html#Insert)|
|<kbd>ESC</kbd>|                                                               Exit insert mode|
|<kbd>i</kbd>, <kbd>a</kbd>|                                                   Insert before, after cursor|
|<kbd>I</kbd>, <kbd>A</kbd>|                                                   Insert start, end of line|
|<kbd>g</kbd><kbd>I</kbd>|                                                     Insert start of line, even before whitespace|
|<kbd>o</kbd>, <kbd>O</kbd>|                                                   Insert new line below, above|
|<kbd>g</kbd><kbd>i</kbd>|                                                     Insert at last insert point|
|<kbd>C</kbd>|                                                                 Change to end of line|
|<kbd>S</kbd>|                                                                 Substitute line|
|<kbd>s</kbd>|                                                                 Substitute character|
|<kbd>Ctrl-n</kbd>, <kbd>Ctrl-p</kbd>|                                         Complete word|
|<kbd>Ctrl-x-l</kbd>|                                                          Complete line|
|<kbd>Ctrl-d</kbd>|                                                            De-indent|
|__Visual Mode And Selection__|[`:h visual-mode`](https://neovim.io/doc/user/visual.html#Visual)|
|<kbd>v</kbd>|                                                                 Enter visual mode|
|<kbd>V</kbd>|                                                                 Enter line-wise visual mode|
|<kbd>Ctrl-v</kbd>|                                                            Block mode|
|<kbd>I</kbd>, <kbd>A</kbd>, <kbd>x</kbd>|                                     Prepend, append, delete block selection|
|<kbd>&lt;</kbd>, <kbd>&gt;</kbd>|                                             Indent selection|
|<kbd>g</kbd><kbd>g</kbd><kbd>V</kbd><kbd>G</kbd>|                             Select whole file|
|<kbd>=</kbd>|                                                                 Auto format selected|
|<kbd>g</kbd><kbd>v</kbd>|                                                     Re-select visual area|
|__Command Mode__|[`:h command-mode`](https://neovim.io/doc/user/cmdline.html#Command-line)|
|`:ls` (or `:buffers`)|                                                        List buffers|
|`:changes`|                                                                   Show changes|
|`:map`|                                                                       Show custom key mappings|
|`:history`|                                                                   Show command history|
|`:jumps`|                                                                     Show jump list|
|`:Man`|                                                                       Man page for word under cursor|
|`:VsnipOpenEdit`|                                                             Edit the snippet configuration for the current language or global|
|`/foo`|                                                                       Search `foo` forward|
|`?foo`|                                                                       Search `foo` backward|
|<kbd>n</kbd>, <kbd>N</kbd>|                                                   Next, previous search result|
|`:s/foo/bar/gI`|                                                              Replace all on current line, mind case|
|`:s/\%Vfoo/bar/g`|                                                            Match only within visual selection with \%V|
|__Ranges__|[`:h ranges`](https://neovim.io/doc/user/cmdline.html#%5Brange%5D)|
|&nbsp;|                                                                       Any of the following can be used when you see `[range]` in the rest of this table|
|`.`|                                                                          __Current line__, can be omitted as in `1,.d` and `1,d` are equivalent|
|`1`|                                                                          __First line__|
|`$`|                                                                          __Last line__ of file|
|`$-n`|                                                                        n lines before the last line of the file|
|`%`|                                                                          The __whole__ file, same as `1,$`|
|`*`|                                                                          Use __last range__, whatever it was!|
|`n`|                                                                          Absolute __line number__ n|
|`+n`|                                                                         Relative n lines down|
|`-n`|                                                                         Relative n lines up|
|`'m`|                                                                         A __marker__, a-z|
|`'<`|                                                                         Start of selection|
|`'>`|                                                                         End of selection|
|&nbsp;|                                                                       __Add any of the above together with a comma to specify a range__|
|`n,m` e.g: `20,30`|                                                           Absolute position in file, e.g. lines 20 to 30 inclusive|
|`+n,+m` e.g: `+20,+30`|                                                       Relative position from current line, e.g. lines +20 to +30 inclusive|
|`'a,'b`|                                                                      From marker a to marker b inclusive|
|`'<,'>`|                                                                      Selection, if you hit `:` to go to command mode when something is selected you will see this|
|`'a,'<`|                                                                      You can mix start and ends, so this is from marker a to start of selection|
|__Range Actions__||
|`:[range]d`|                                                                  Delete range|
|`:[range]!{cmd}`|                                                             Run a command over the selection, the contents are overwritten!|
|`:[range]!sort -u`|                                                           Sort unique selection|
|`:[range]!column -t`|                                                         Tabulate range|
|`:[range]!grep {word}`|                                                       Only return lines containing word|
|`:[range]w new.txt`|                                                          Write range to new file|
|`:[range]w !{cmd}`|                                                           Execute cmd with range as stdin, `:'a,'bw !python3`, output is to command window|
|`:[range]g/pattern/{cmd}`|                                                    TODO: Run the command on all lines in [range] matching `pattern`|
|`:[range]s/pattern//gn`|                                                      Count matches|
|`:[range]!par`|                                                               Format range|
|`:[range]!par j1w80`|                                                         Format range to j1w80|
|<kbd>g</kbd><kbd>w</kbd>|                                                     :heavy_check_mark: Wrap, quick format current paragraph|
|`:[range]ce [width]`|                                                         Centre lines `:.,+3 ce 80`, to centre current line on 80 cols use `:ce 80`|
|`:[range]ri [right edge]`|                                                    Right alignment `:% right 100`|
|`:[range]le [indent]`|                                                        Left alignment.(Unit of identation is space) `:% left 4`|
|`:[range]s/foo\(\d\+\)/bar\1/gic`|                                            TODO: Replace all, ignore case, confirm each. Note backreference and escaped parens|
|`:[range]&`|                                                                  Repeat last :s on range|
|`:/foo/+1d`|                                                                  Delete line after next line containing `foo`|
|__Operators__|[`:h operator`](https://neovim.io/doc/user/motion.html)|
|<kbd>d</kbd>|                                                                 Delete/cut|
|<kbd>d</kbd><kbd>d</kbd>|                                                     Delete current line|
|<kbd>d</kbd><kbd>^</kbd>|                                                     Delete to start of line|
|<kbd>D</kbd>|                                                                 Delete to end of line|
|<kbd>x</kbd>, <kbd>X</kbd>|                                                   Delete forward, back|
|<kbd>y</kbd>|                                                                 Yank/copy|
|<kbd>y</kbd><kbd>y</kbd>|                                                     Yank current line|
|<kbd>p</kbd>, <kbd>P</kbd>|                                                   Paste before, after cursor|
|<kbd>c</kbd>|                                                                 Change|
|<kbd>u</kbd>|                                                                 Undo|
|<kbd>U</kbd>|                                                                 Undo all changes to line|
|<kbd>Ctrl-r</kbd>|                                                            Redo|
|<kbd>r</kbd>|                                                                 Replace character|
|<kbd>R</kbd>|                                                                 Type over|
|<kbd>.</kbd>|                                                                 Repeat last operation|
|<kbd>J</kbd>|                                                                 Join with next line with space between|
|<kbd>g</kbd><kbd>J</kbd>|                                                     Join without spaces|
|<kbd>&gt;</kbd><kbd>&gt;</kbd>, <kbd>&lt;</kbd><kbd>&lt;</kbd>|               Indent, deindent|
|<kbd>=</kbd><kbd>=</kbd>|                                                     Autoindent|
|__Text Objects__|[`:h text-objects`](https://neovim.io/doc/user/motion.html#text-objects)|
|<kbd>[char]</kbd> can be any of <kbd>[</kbd>, <kbd>(</kbd>, <kbd>{</kbd>|     Motion chars |
|<kbd>c</kbd><kbd>c</kbd>|                                                     Change current line|
|<kbd>c</kbd><kbd>i</kbd><kbd>w</kbd>|                                         Change in word|
|<kbd>c</kbd><kbd>i</kbd><kbd>s</kbd>|                                         Change in sentence|
|<kbd>c</kbd><kbd>i</kbd><kbd>p</kbd>|                                         Change in paragraph|
|<kbd>c</kbd><kbd>i</kbd><kbd>[char]</kbd>|                                    Change inside char|
|<kbd>c</kbd><kbd>i</kbd><kbd>t</kbd>|                                         Change inside tags (HTML/XML)|
|<kbd>c</kbd><kbd>f</kbd><kbd>char</kbd>|                                      Change forward upto and including any char|
|<kbd>c</kbd><kbd>t</kbd><kbd>char</kbd>|                                      Change to but not including any char|
|<kbd>d</kbd><kbd>f</kbd><kbd>char</kbd>|                                      Delete forward upto and including any char|
|<kbd>d</kbd><kbd>t</kbd><kbd>char</kbd>|                                      Delete to but not including any char|
|<kbd>d</kbd><kbd>a</kbd><kbd>w</kbd>|                                         Delete around word|
|<kbd>d</kbd><kbd>a</kbd><kbd>p</kbd>|                                         Delete around paragraph|
|<kbd>y</kbd><kbd>i</kbd><kbd>"</kbd>|                                         Yank in quotes|
|<kbd>v</kbd><kbd>i</kbd><kbd>b</kbd>|                                         Visual in block|
|<kbd>v</kbd><kbd>i</kbd><kbd>p</kbd>|                                         Select paragraph|
|__Surround__|[plugin](https://github.com/tpope/vim-surround)|
|<kbd>c</kbd><kbd>s</kbd><kbd>"</kbd><kbd>'</kbd>|                             :heavy_check_mark: "aWord" to 'aWord'|
|<kbd>c</kbd><kbd>s</kbd><kbd>'</kbd><kbd>"</kbd>|                             :heavy_check_mark: 'aWord' to "aWord"|
|<kbd>c</kbd><kbd>s</kbd><kbd>'</kbd><kbd>&lt;</kbd><kbd>q</kbd><kbd>&gt;</kbd>|:heavy_check_mark: 'aWord' to &lt;q&gt;aWord&lt;/q&gt;|
|<kbd>d</kbd><kbd>s</kbd><kbd>'</kbd>|                                         :heavy_check_mark: 'aWord' to aWord|
|<kbd>y</kbd><kbd>s</kbd><kbd>i</kbd><kbd>w</kbd><kbd>]</kbd>|                 :heavy_check_mark: aWord to [aWord]|
|<kbd>y</kbd><kbd>s</kbd><kbd>s</kbd><kbd>)</kbd>|                             :heavy_check_mark: Whole-Line to (Whole-Line)|
|<kbd>y</kbd><kbd>s</kbd><kbd>s</kbd><kbd>"</kbd>|                             :heavy_check_mark: Whole-Line to "Whole-Line"|
|__Macros__|[`:h complex-repeat`](https://neovim.io/doc/user/repeat.html#complex-repeat)|
|<kbd>q</kbd><kbd>x</kbd>|                                                     Record to `x`|
|<kbd>q</kbd>|                                                                 Stop recording|
|<kbd>@</kbd><kbd>x</kbd>|                                                     Execute macro `x`|
|<kbd>@</kbd><kbd>@</kbd>|                                                     Repeat last macro|
|<kbd>q</kbd><kbd>q</kbd>|                                                     Record macro (as q), double <kbd>q</kbd> is a quick shortcut|
|<kbd>Q</kbd>|                                                                 :heavy_check_mark: Play macro <kbd>q</kbd>, shortcut for <kbd>@q</kbd>|
|`:%norm @x`|                                                                  Run macro @x on all lines|
|`:5,10norm @x`|                                                               Run macro @x on lines 5-10|
|__Marks__|[`:h mark-motions`](https://neovim.io/doc/user/motion.html#mark-motions)|
|<kbd>m</kbd><kbd>space</kbd>|                                                 Remove all marks|
|<kbd>m</kbd><kbd>x</kbd>|                                                     Toggle mark <kbd>x</kbd>|
|<kbd>'</kbd><kbd>x</kbd>, <kbd>`</kbd><kbd>x</kbd>|                           Goto to mark `x` (a-z), '=start of line, `=end|
|<kbd>m</kbd><kbd>X</kbd>|                                                     Set GLOBAL mark `X` (A-Z), i.e. a mark in another file|
|`:Telescope marks`|                                                           List marks, select and jump|
|`:marks`|                                                                     List marks|
|`:'x,'y s/foo/bar/g`|                                                         Replace between marks `x` and `y`|
|`:'<,'> s/foo/bar/g`|                                                         Replace between selected text|
|__Options__|[`:h options`](https://neovim.io/doc/user/options.html)|
|`:set number!`|                                                               Toggle line numbers|
|`:set rnu!`|                                                                  Toggle relative line numbers|
|`:set ft={markdown,java,...}`|                                                Set file type|
|`:set ff={unix,html,dos}`|                                                    Set file format|
|`:set syntax?`|                                                               Syntax type|
|`:set syntax=perl`|                                                           Set syntax|
|`:set paste`|                                                                 Autoindent off|
|`:set hlsearch`|                                                              Highlight matches|
|`:set noOPT`|                                                                 Turn off `opt`|
|`:set OPT?`|                                                                  Show value of `opt`|
|`:set`|                                                                       Show current options|
|__Windows and Buffers__|[`:h windows`](https://neovim.io/doc/user/windows.html)|
|<kbd>tab</kbd>, <kbd>shift-tab</kbd>, <kbd>b</kbd><kbd>d</kbd>|               Buffer next, previous, delete (close)|
|`:sp, :vsp`|                                                                  Split view horizontal, vertical|
|<kbd>Ctrl-w</kbd> <kbd>[sv]</kbd>|                                            Split view horizontal, vertical|
|<kbd>Ctrl-w</kbd> <kbd>w</kbd>|                                               Switch view|
|<kbd>Ctrl-w</kbd> <kbd>Ctrl-w</kbd>|                                          Switch view|
|<kbd>Ctrl-w</kbd> <kbd>q</kbd>|                                               Close view|
|<kbd>Ctrl-w</kbd> [-+=_]|                                                     Resize view|
|`:bufdo %s/foo/bar`|                                                          Do to all buffers|
|__Registers__|[`:h registers`](https://neovim.io/doc/user/fold.html#Folding)|
|`:reg`|                                                                       Show register contents|
|<kbd>"</kbd><kbd>a</kbd><kbd>Y</kbd>|                                         Yank(copy) to register a|
|<kbd>"</kbd><kbd>a</kbd><kbd>p</kbd>|                                         Paste from register a|
|<kbd>Y</kbd>|                                                                 Yank(copy) to default register, " or 0|
|<kbd>p</kbd>|                                                                 Paste from default register|
|__Folding__|[`:h folding`](https://neovim.io/doc/user/fold.html#Folding)|
|<kbd>F2</kbd>|                                                                Cycle through fold methods|
|`:set foldmethod=manual`|                                                     or syntax, indent, etc|
|`:[range]fold`|                                                               Create fold on range or selection|
|<kbd>z</kbd><kbd>f</kbd>[move]|                                               Create fold|
|<kbd>z</kbd><kbd>a</kbd>|                                                     Toggle fold|
|<kbd>z</kbd><kbd>o</kbd>|                                                     Open fold|
|<kbd>z</kbd><kbd>c</kbd>|                                                     Close fold|
|<kbd>z</kbd><kbd>d</kbd>|                                                     Delete this fold|
|<kbd>z</kbd><kbd>E</kbd>|                                                     Delete all folds|
|<kbd>z</kbd><kbd>R</kbd>|                                                     Fold open|
|<kbd>z</kbd><kbd>M</kbd>|                                                     Fold collapse|
|__Formatting__|[`:h formatoptions`](https://neovim.io/doc/user/options.html#formatoptions)|
|`:set textwidth=80`|                                                          Set default width to 80 columns|
|`:set formatprg=par\ -w79`|                                                   Format using paragraph to at most 79 chars|
|<kbd>g</kbd><kbd>q</kbd><kbd>[motion]</kbd>|                                  like gqip to format around paragraph|
|<kbd>Ctrl-w</kbd>|                                                            does a gqip|
|<kbd>g</kbd><kbd>s</kbd>|                                                     Delete trailing whitespace in whole file|
|<kbd>g</kbd><kbd>g</kbd><kbd>=</kbd><kbd>G</kbd>|                             Auto (re)indent entire document|
|<kbd>=</kbd>|                                                                 (re)indent the text on the current line or on the area selected (SUPER)|
|<kbd>=</kbd><kbd>%</kbd>|                                                     (re)indent the current braces { ... }|
|__Changing case__|[`:h case`](https://neovim.io/doc/user/change.html#case)|
|<kbd>~</kbd>|                                                                 Toggle case|
|<kbd>g</kbd><kbd>U</kbd><kbd>U</kbd>|                                         Upper case whole line|
|<kbd>g</kbd><kbd>u</kbd><kbd>u</kbd>|                                         Lower case whole line|
|<kbd>g</kbd><kbd>~</kbd><kbd>~</kbd>|                                         Flip case whole line|
|<kbd>g</kbd><kbd>~</kbd><kbd>[motion]</kbd>|                                  Togglecase|
|<kbd>g</kbd><kbd>u</kbd><kbd>[motion]</kbd>|                                  Lowercase|
|<kbd>g</kbd><kbd>U</kbd><kbd>[motion]</kbd>|                                  Uppercase|
`:%s/\v(\a+)/\u\1/g` Title Case regex, \u,\l=Upper/lower next char, \U,\L=Up/Low following chars<br/>`:%s/\v(\w)_(\a+)/\1\u\2/g` Change `variable_name` to camel case, `variableName`
|__Increment/Dec a value__|[plugin](https://github.com/tpope/vim-speeddating)|
|<kbd>Ctrl-a</kbd>|                                                            :heavy_check_mark: Increment value under cursor by 1.  Also works with Dates/times.|
|<kbd>Ctrl-x</kbd>|                                                            :heavy_check_mark: Decrement value under cursor by 1.|
A query to increment value in whole file<br/>`:let i=1 \| g/foo/s//\=i/ \| let i=i+1`<br/>For example:<br/>`:let i=1 \| g/foo/s//\="morestuff".i."morestuff"/ \| let i=i+1`<br/>`:let i=1 \| g/WEEKNUMBER/s//\=i/ \| let i=i+1`
|__Moving Lines__||
|<kbd>Alt-Up</kbd>|                                                            :heavy_check_mark: Move current line/selection up 1 line|
|<kbd>Alt-Down</kbd>|                                                          :heavy_check_mark: Move current line/selection down 1 line|
|__Commenting__||
|<kbd>Ctrl-/</kbd>|                                                            :heavy_check_mark: (un)Comment a line and move to the next.<br/> - I've tweaked the commenter to comment the currentline (or uncomment) and then move to the next.<br/> - Or you can relect and range and then comment, try <kbd>v</kbd><kbd>i</kbd><kbd>p</kbd><kbd>Ctrl-/</kbd><br/> - I find this really handy!|
|__Function Keys__||
|<kbd>F1</kbd>|                                                                :heavy_check_mark: Open this cheatsheet|
|<kbd>F2</kbd>|                                                                :heavy_check_mark: Cycle through different folding methods|
|<kbd>F3</kbd>|                                                                :heavy_check_mark: Toggle most visual items|
|<kbd>F4</kbd>|                                                                :heavy_check_mark: Open left file menu|
|<kbd>F5</kbd>|                                                                :heavy_check_mark: Kitty command - assumes text highlighted is a filename and opens it|
|<kbd>F6</kbd>|                                                                :heavy_check_mark: Runs the last range substitute, see * and &|
|<kbd>F7</kbd>|                                                                :heavy_check_mark: Diff current buffer and next (split and windo diffthis)|
|<kbd>F8</kbd>|                                                                :heavy_check_mark: Open Lazygit|
|<kbd>F9</kbd>|                                                                :heavy_check_mark: Open Telescope|
|<kbd>F10</kbd>|                                                               :heavy_check_mark: Kitty command - New terminal in new tab|
|<kbd>F11</kbd>|                                                               :heavy_check_mark: Kitty command - full screen|
|<kbd>F12</kbd>|                                                               :heavy_check_mark: Toggle right tags bar|
|__Executing lines/commands__||
|<kbd>g</kbd><kbd>r</kbd>|                                                     :heavy_check_mark: Run line under cursor in shell, **USE WITH CARE!**|
|<kbd>g</kbd><kbd>t</kbd>|                                                     :heavy_check_mark: Run line under cursor as if it were a vim command|
|<kbd>Alt-r</kbd>|                                                             :heavy_check_mark: Run the current file|
|<kbd>Alt-e</kbd>|                                                             :heavy_check_mark: Make the current file executable `chmod a+x file`<br/>The Eunuch plugin also makes files starting with `#!` executable|
|`:g/^Foo/norm 0xxxBar`|                                                       Norm runs commands as if you typed them|
|__Spelling__|[`:h spell`](https://neovim.io/doc/user/spell.html)|
|<kbd>z</kbd><kbd>=</kbd>|                                                     Suggest spelling|
|<kbd>z</kbd><kbd>g</kbd>, <kbd>z</kbd><kbd>u</kbd><kbd>g</kbd>|               Add to dict, undo add|
|__Miscellaneous__||
|<kbd>g</kbd><kbd>Ctrl-g</kbd>|                                                Word count|
|<kbd>g</kbd><kbd>?</kbd>|                                                     Rot 13|
|`:ascii` or <kbd>g</kbd><kbd>a</kbd>|                                         Ascii, octal val of char under cursor|
|`:r !date`|                                                                   Insert external command output (e.g. date)|
|`:so ~/.vimrc`|                                                               Reload .vimrc|
|`:v/pattern/[command]`|                                                       Like :g but finds NON-matching lines|
|`:g/foobar/y A`|                                                              Yank all lines matching `foobar` into copy buffer|
|<kbd>Ctrl-l</kbd>|                                                            :heavy_check_mark: Redraws the screen and removes any search highlighting|
