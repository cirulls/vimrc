" manage plugins in ~/.vim/bundle via pathogen
call pathogen#infect()
call pathogen#helptags()

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open=1
let g:syntastic_enable_balloons=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

" enable Perl syntax checker
let g:syntastic_perl_lib_path=['/usr/lib/perl/5.14.2']
let g:syntastic_perl_checkers=['perl' , 'perlcritic']
let g:syntastic_enable_perl_checker = 1

" language and encoding
set langmenu=en_GB.utf8
let $LANG = 'en_GB.utf8'
set helplang=en
set encoding=utf-8
set fileencoding=utf-8
" default menus
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" syntax highlight and auto-completion
syntax enable 
set omnifunc=syntaxcomplete#Complete
" colours and fonts
set background=dark
set guifont=DejaVu\ Sans
" display line number 
set number
" pretty print xml files through xmllint
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
" highlight search patterns
set hlsearch
" set past mode
set pastetoggle=<F2>
" indentation
filetype plugin indent on
set tabstop=4 	 "An indentation level every four columns"
set expandtab 	 "Convert all tabs typed into spaces"
set shiftwidth=4 "Indent/outdent by four columns"
set shiftround   "Always indent/outdent to the nearest tabstop"
" highlight current line
:set cursorline
" allow paste from clipboard
:set paste

" powerline settings
set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" force markdown syntax for .md files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" remap key E to command Explore
command! E Explore

" store temporary files in /tmp
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
