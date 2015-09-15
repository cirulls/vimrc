" manage plugins via pathogen (~/.vim/bundle)
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

" allow closetag plugin only for html/xml files
"autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
"autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" enable syntax highlight
"syntax on
syntax enable 
set langmenu=en_GB.utf8
let $LANG = 'en_GB.utf8'
set helplang=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"filetype plugin on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set background=dark
" set guifont=Monospace\12
set guifont=DejaVu\ Sans
" display line number 
set number
" pretty print xml files through xmllint
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
" highlight search patterns
set hlsearch
set encoding=utf-8
set fileencoding=utf-8

" set past mode
set pastetoggle=<F2>

" display file name in Konsole Tab (not fully working)
"autocmd BufReadPost * :silent !qdbus org.kde.konsole $KONSOLE_DBUS_SESSION org.kde.konsole.Session.setTitle 1 % &
"autocmd VimLeavePre * :silent !qdbus org.kde.konsole $KONSOLE_DBUS_SESSION org.kde.konsole.Session.setTabTitleFormat 0 $'%d : %n\n' &

" indentation
set tabstop=4 	 "An indentation level every four columns"
set expandtab 	 "Convert all tabs typed into spaces"
set shiftwidth=4 "Indent/outdent by four columns"
set shiftround   "Always indent/outdent to the nearest tabstop"


" highlight current line
:set cursorline

" allow paste from clipboard
:set paste

" remap keys
"noremap <Up> <Nop>
"noremap <Down> <Nop> 
"noremap <Left> <Nop> 
"noremap <Right> <Nop> 
"noremap <Up> <Nop> 

" powerline settings
set rtp+=/usr/lib/python2.6/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
