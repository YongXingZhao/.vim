""source $vimruntime/vimrc_example.vim
"
"map window operation
"""----------------------------------------
"""=========== #Key Mapping ============
"""----------------------------------------

" set leader key 
let mapleader=" "

" map mobile operation
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>
inoremap jk <Esc>

"map window operation
nnoremap <leader>ww <C-W>w
inoremap <leader>ww <C-O><C-W>w
nnoremap <leader>wc <C-W>c
nnoremap <leader>wq <C-W>q
nnoremap <leader>wo <C-W>o
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l
nnoremap <leader>ws <C-W>s
nnoremap <leader>wv <C-W>v

nnoremap <Up> :resize+10<CR>
nnoremap <Down> :resize-10<CR>
nnoremap <Left> :vertical resize-10<CR>
nnoremap <Right> :vertical resize+10<CR>

"" tab
nnoremap gn :tabnew<CR>


"toggle buffer
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
 
"close current buffer
nnoremap <C-x> :w<CR>:bd<CR>

"<leader>1~9 toggle buffer1~9
nnoremap <leader>1 :b 1<CR>
nnoremap <leader>2 :b 2<CR>
nnoremap <leader>3 :b 3<CR>
nnoremap <leader>4 :b 4<CR>
nnoremap <leader>5 :b 5<CR>
nnoremap <leader>6 :b 6<CR>
nnoremap <leader>7 :b 7<CR>
nnoremap <leader>8 :b 8<CR>
nnoremap <leader>9 :b 9<CR>

nnoremap <f4> :set list!<cr>



"""----------------------------------------
"""=========== #Window Options ============
"""----------------------------------------


"""****** 1. Important Option ******

"" set no compatible vi
set nocompatible

"" set default mode is insertmode  
set noinsertmode

"" paste model toggle map f2
set pastetoggle=<F2> 


"""****** 2. Mobile, search, regular expression ******
 

"" searching match characters highlight
set incsearch

"" search ignorecase
set ignorecase

"" smart lower and upper case. if include upppercase  character over ignorecase
set smartcase


"""****** 3. Tag ******


"""****** 4. Display text ******

"" The number of screen lines to display around the cursor
set scrolloff=10

"" long line break
set wrap

"" Number of lines used on the command line
set cmdheight=2

"" Don't repaint while executing the macro
set lazyredraw
" load syntax menu
let do_syntax_sel_menu=1

" no lazyload menu
let do_no_lazyload_menus=1

"" Display <Tab> with ^I, display end of line with $ (local to window)
set nolist

"" list of strings for list mode
set listchars=tab:>-,trail:-,eol:$,space:-  

"" line number for each line (local to window)
set number

"" Display the relative line number of each line
set relativenumber


"""****** 5. Grammar, highlight and spelling ******

"" "dark" or "light"; background color brightness
set background=dark

"" File Type: The FileType event is triggered at setup time
set filetype=text

"" Use the syntax to highlight the name
"set syntax=on

"" Highlight the screen column of the cursor
set cursorcolumn
" hi cursorcolumn guibg=#00ff00

"" Highlight the screen line of the cursor
set cursorline
" hi cursorline guibg=#00ff00


"""****** 6. Multiple Windows ******

"" 0, 1 or 2; when to use the status line for the last window
set laststatus=2


"""****** 7. Multiple tabs ******


"""****** 8. Terminal ******


"""****** 9. Using the mouse ******

" turn on mouse model
if has('mouse')
	if has('gui_running') || (&term =~ 'xterm' && !has('mac'))
		set mouse=a
	else
		set mouse=nvi
	endif
endif


"""****** 10. Graphical user interface ******

"" gui font configuration
"" wide character font
if has('gui_running')
	set guifont=jetbrains\ mono:h14
	set guifontwide=jetbrains\ mono\ nl:h14
endif

"" The language used by the menu
set langmenu=zh_CN.UTF-8

"""****** 11. Print ******


"""****** 12. Messages and messages ******
"" show (partial) command keys in location given by 'showcmdloc'
set showcmd

"" Show cursor position below each window
set ruler

"" Open dialog when command fails
set confirm

""List of preferred languages for finding help
set helplang=cn

"""****** 13. Selecting text ******
"" "old"', "inclusive" or "exclusive"; how to select text
set selection=inclusive

"" "unnamed": use * registers like unnamed registers
"" "autoselect": put the selected text always on the clipboard
set clipboard+=unnamed


"""****** 14. Editing text ******

"" Automatically save and restore undo history
set undofile

"" undo file path
if has('persistent_undo')
	if has("win32") || has("win64") || has("win95") || has("win16")
		set undodir=~/vimfiles/undodir
	else
		set undodir=~/.vim/undodir
	endif
	if !isdirectory(&undodir)
		call mkdir(&undodir, 'p', 0700)
	endif
endif

"" When a parenthesis is inserted, briefly jump to the matching parenthesis
set showmatch

"" The duration (in tenths of a second) of a match to show "showmatch"
set matchtime=5


"""****** 15. Tab and indents ******

"" <Tab> represents the number of spaces in the text (local to the buffer)
set tabstop=4

"" The number of spaces to use for each step of (auto)indentation
set shiftwidth=4

"" Insert 'shiftwidth' spaces when indenting with the <Tab> key
set smarttab

"" If non-zero, the number of spaces inserted for <Tab>
set softtabstop=4

"" <Tab>Expands to spaces in insert mode
set noexpandtab

"" Automatically set new line indentation
set autoindent

"" Intelligent automatic indentation
set smartindent


"""****** 16. Collapse ******


"""****** 17. Differential mode ******


"""****** 18. Mapping ******


"""****** 19. Reading and writing files ******

"" Keep backup after overwriting files
set backup

"" List of directories where backup files are stored
if has("win32") || has("win64") || has("win95") || has("win16")
    set backupdir=~/vimfiles/backup
else
    set backupdir=~/.vim/backup
endif

if !isdirectory(&backupdir)
	call mkdir(&backupdir, 'p', 0700)
endif

"" The extension name used by the backup file
set backupext=.bak

"" Automatically write to file when leaving a modified buffer
set autowrite

"" Automatically read files when they are modified outside of vim
set autoread


"""****** 20. Interchange files ******


"""****** 21. Command line editing ******

"" Number of command lines remembered
set history=1000

"" Show match list when command line completion
set wildmenu


"""****** 22. Executing external commands ******


"""****** 23. Running make and skipping to errors (quick fix) ******


"""****** 24. Language Specific ******


"""****** 25. Multibyte characters ******

""edit file encoding 
set encoding=utf-8

""The character encoding of the current file (local to buffer)
set fileencoding=utf-8

""Automatically detect character encoding
set fileencodings=usc-bom,utf-8,gb18030,latin1

""The character encoding used by the terminal
set termencoding=utf-8

"""****** 26. Miscellaneous ******

"" A list specifying what to write in the viminfo file 
"Save and restore global variables that start with an uppercase letter and contain no lowercase letters
set viminfo+=!

"" The filename and path to use for the viminfo file 
set viminfofile=~/.vim/.viminfo

"" Enable 256-color support
set t_co=256

"" cursor line
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set autochdir
"" go back to line"
au BufReadPost * if line("''\"") > 1 && line("'\"") <= line("$") | exec "normal! g'\"" | endif

" edit .vimrc after source vimrc
"autocmd bufwritepost $MYVIMRC source $MYVIMRC
"
"exit insert mode auto save
au insertleave *.go,*.sh,*.java write

language messages zh_CN.UTF-8


filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

syntax enable
syntax on


"""----------------------------------------
"""=========== #Plugin Options ============
"""----------------------------------------

packadd matchit

"" Plugin Management vim-plug: https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'


colorscheme wildcharm
"""****** @vim-airline ******
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
"""------ @vim-airline ------
"" When the plugin is correctly loaded, there will be a nice statusline at the bottom of each vim window.

"" airline theme
let g:airline_theme = 'atomic'
let g:airline#themes#random#palette = {}

"use powerline font
let g:airline_powerline_fonts = 1

"" in section B of the status line display the CWD
" let g:airline_section_b = '%{getcwd()}'

"" highlight cache
let g:airline_highlighting_cache = 1

"" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#ale#enabled = 1

"show window tabs and buffer
let g:airline#extensions#tabline#enabled = 1
"" show 'X' at the end of the tabline 
let g:airline#extensions#tabline#show_close_button = 1
"" put text here like TABS to denote tabs
let g:airline#extensions#tabline#tabs_label = ''
"" put text here like BUFFERS to denote buffers
let g:airline#extensions#tabline#buffers_label = '%{strftime("%y-%m-%d %I:%M:%S %p")}'
"" disable file paths in the tab
let g:airline#extensions#tabline#fnamemod = ':t'
"" show tab numbers on the right
let g:airline#extensions#tabline#show_tab_count = 1                          
"" show buffers in the tabline
let g:airline#extensions#tabline#show_buffers = 1
"" disable tab numbers
let g:airline#extensions#tabline#show_tab_nr = 0
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
"overflow marker
let g:airline#extensions#tabline#overflow_marker = '…'
"" minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#tab_min_count = 2
"" disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_splits = 0
" disables the weird ornage arrow on the tabline
" let g:airline#extensions#tabline#show_tab_type = 0

"" Separators can be configured independently for the tabline, so here is how you can define "straight" tabs:
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
" let g:airline#extensions#tabline#

"" formatter airline use path
let g:airline#extensions#tabline#formatter = 'unique_tail'

"turn off status bar show space count
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

""symbol replace
let g:airline#extensions#coc#error_symbol = '😣'
let g:airline#extensions#coc#warning_symbol = '😥'


"""****** @vim-easymotion ******
Plug 'easymotion/vim-easymotion'
"""------ @vim-easymotion ------

let g:EasyMotion_smartcase = 1
" keep cursor colum when JK motion
let g:EasyMotion_startofline = 0 
nmap <Leader> <Plug>(easymotion-prefix)
nmap <Leader>h <Plug>(easymotion-linebackward)
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>l <Plug>(easymotion-lineforward)
nmap <Leader>. <Plug>(easymotion-repeat)

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"" 2-character search motion
"nmap t <Plug>(easymotion-t2)
"nmap s <Plug>(easymotion-s2) 
"nmap s <Plug>(easymotion-overwin-f) 
"nmap s <Plug>(easymotion-overwin-f2) 

"" n-character search motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


"""****** @vim-sneak ******
Plug 'justinmk/vim-sneak'
"""------ @vim-sneak ------
let g:sneak#label = 1


"""****** @nerdtree ******
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
"""------ @nerdtree ------
noremap <F10> :NERDTreeToggle<CR>
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

" Function to open the file or NERDTree or netrw.
"   Returns: 1 if either file explorer was opened; otherwise, 0.
function! s:OpenFileOrExplorer(...)
    if a:0 == 0 || a:1 == ''
        NERDTree
    elseif filereadable(a:1)
        execute 'edit '.a:1
        return 0
    elseif a:1 =~? '^\(scp\|ftp\)://' " Add other protocols as needed.
        execute 'Vexplore '.a:1
    elseif isdirectory(a:1)
        execute 'NERDTree '.a:1
    endif
    return 1
endfunction

" Auto commands to handle OS commandline arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()==1 && !exists('s:std_in') | if <SID>OpenFileOrExplorer(argv()[0]) | wincmd p | enew | wincmd p | endif | endif

" Command to call the OpenFileOrExplorer function.
command! -n=? -complete=file -bar Edit :call <SID>OpenFileOrExplorer('<args>')

" Command-mode abbreviation to replace the :edit Vim command.
cnoreabbrev e Edit


"""****** @tagbar ******
Plug 'preservim/tagbar',{'on': 'TagbarToggle'}
"""------ @tagbar ------
nmap <F8> :TagbarToggle<CR>


"""****** @nerdcommenter ******
Plug 'preservim/nerdcommenter'
"""------ @nerdcommenter ------
"space count
let g:NERDSpaceDelims=2


"""****** @vim-surround ******
Plug 'tpope/vim-surround'
"""------ @vim-surround ------


"""****** @vim-fugitive ******
Plug 'tpope/vim-fugitive'
"""------ @vim-fugitive ------


"""****** @vim-repeat ******
Plug 'tpope/vim-repeat'
"""------ @vim-repeat ------


"""****** @vim-commentary ******
Plug 'tpope/vim-commentary'
"""------ @vim-commentary -----


"""****** @vim-multiple-cursors ******
" Plug 'terryma/vim-multiple-cursors'
"""------ @vim-multiple-cursors ------
" let g:multi_cursor_use_default_mapping=0

" Default mapping
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'

let g:multi_cursor_exit_from_visual_mode = 0
" Default highlighting (see help :highlight and help :highlight-link)
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual



"""****** @vim-visual-multi ******
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"""------ @vim-visual-multi ------


"""****** @vim-highlightedyank ******
Plug 'machakann/vim-highlightedyank'
"""------ @vim-highlightedyank ------
if !exists('##TextYankPost')
  nmap y <Plug>(highlightedyank)
  xmap y <Plug>(highlightedyank)
  omap y <Plug>(highlightedyank)
endif
highlight HighlightedyankRegion cterm=reverse gui=reverse
"" If you want to optimize highlight duration, assign a time in milliseconds:
" let g:highlightedyank_highlight_duration = "1000"


"""****** @indentline ******
Plug 'yggdroot/indentline'
"""------ @indentline ------
nmap <F3> :IndentLinesToggle<CR>

let g:indentLine_enabled = 1
"disable color
let g:indentLine_setcolors = 0
" let g:indentline_defaultgroup = 'specialkey'

"vim
let g:indentLine_color_term = 239
"gvim
" let g:indentline_color_gui = '#a4e57e'
"none x terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 0 " (default: 2)

"background (vim, gvim)
" let g:indentline_bgcolor_term = 202
" let g:indentline_bgcolor_gui = '#ff5f00'

"indentline style
let g:indentLine_char_list = ['|', '¦', '┆', '┊']



"""****** @undotree ******
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle'}
"""------ @undotree ------
nnoremap <F5> :UndotreeToggle<CR>


"""****** @auto-pairs ******
Plug 'jiangmiao/auto-pairs'
"""------ @auto-pairs ------
"set autopair symbol
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}
"add autopair symbol
let g:AutoPairs['<']='>'


"""****** @rainbow ******
Plug 'luochen1990/rainbow'
"""------ @rainbow ------
let g:rainbow_active = 1

let g:rainbow_load_separately = [
\['*', [['(', ')'], ['\[', '\]'], ['{', '}']] ],
\['*.tex' , [['(', ')'], ['\[', '\]']] ],
\['*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
\['*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
\]

let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}


"""****** @YouCompleteMe ******
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' }
"""------ @YouCompleteMe -----

" let g:ycm_goto_buffer_command = 'horizontal-split'
"开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
"注释与字符串中的内容也用于补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 
" let g:syntastic_ignore_files=[".*\.py$"]
"语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
"映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
" let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"在注释输入中也能补全
" let g:ycm_complete_in_comments = 1                          
"在字符串输入中也能补全
" let g:ycm_complete_in_strings = 1                           
"注释和字符串中的文字也会被收入补全
" let g:ycm_collect_identifiers_from_comments_and_strings = 1 
" let g:ycm_global_ycm_extra_conf='~/vimfiles/.ycm_extra_conf.py'
"禁用语法检查
" let g:ycm_show_diagnostics_ui = 0
"回车即选中当前项
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            
"跳转到定义处
" nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     
" let g:ycm_min_num_of_chars_for_completion=2   



"""****** @argtextobj ******
Plug 'vim-scripts/argtextobj.vim'
"""------ @argtextobj -----
let g:argtextobj_pairs="[:],(:),<:>"


"""****** @vim-exchange ******
Plug 'tommcdo/vim-exchange'
"""------ @vim-exchange -----
nmap cx <Plug>(Exchange)
xmap X <Plug>(Exchange)
nmap cxc <Plug>(ExchangeClear)
nmap cxx <Plug>(ExchangeLine)


"""****** @vim-textobj-entire ******
" Plug 'kana/vim-textobj-entire'
"""------ @vim-textobj-entire -----


"""****** @vim-paragraph-motion ******
Plug 'dbakker/vim-paragraph-motion'
"""------ @vim-paragraph-motion -----


"""****** @quick-scope ******
Plug 'unblevable/quick-scope'
"""------ @quick-scope -----
" Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']

" Map the leader key + q to toggle quick-scope's highlighting in normal/visual mode.
" Note that you must use nmap/xmap instead of their non-recursive versions (nnoremap/xnoremap).
nmap <leader>q <plug>(QuickScopeToggle)
xmap <leader>q <plug>(QuickScopeToggle)

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
