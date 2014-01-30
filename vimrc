set listchars=tab:▸\ ,trail:∞

set mouse=a
" select when using the mouse
set selectmode=mouse

" allow backspacing over everything in insert mode
set backspace=indent,eol,start


""
"" IDENTATION
""
"" Each indentation level is four spaces. Tabs are not used. (Popular with Java programmers.)
"set softtabstop=4 shiftwidth=4 expandtab "autoindent
" set tabstop=4 shiftwidth=4

" set expandtab
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType make setlocal noexpandtab
autocmd FileType automake setlocal noexpandtab

" set the commandheight
set cmdheight=2

"" BACKUP FILES
set nobackup
set nowritebackup

" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler

" show (partial) commands
set showcmd

" do incremental searches (annoying but handy);
set incsearch

" Set ignorecase on
set ignorecase

" smart search (override 'ic' when pattern has uppers)
set scs

" Set 'g' substitute flag on
" set gdefault

" Set status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

" Always display a status line at the bottom of the window
set laststatus=2

" I like this as it makes reading texts easier (for me, at least).
set joinspaces

" showmatch: Show the matching bracket for the last ')'?
set showmatch

" allow tilde (~) to act as an operator -- ~w, etc.
set notildeop

" highlight strings inside C comments
let c_comment_strings=1


" pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv

" Make tab in v mode work like I think it should (keep highlighting):
vmap <tab> >gv
vmap <s-tab> <gv

colorscheme torte

" toggle line numbers with double ctrl-n
:nmap <C-N><C-N> :set invnumber<CR>

" Shortcut to rapidly toggle `set list`
nmap <C-P> :set list!<CR>
set list
