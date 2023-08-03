"source $vimruntime/vimrc_example.vim
"
"
"""----------------------------------------
"""=========== #Window Options ============
"""----------------------------------------


"""****** 1. Important Option ******

"" set no compatible vi
set nocompatible

"" set default mode is insertmode  
set noinsertmode

"" paste model toggle map f2
set pastetoggle=<f2> 


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

"" Number of lines used on the command line
set cmdheight=2

"" Don't repaint while executing the macro
set lazyredraw

"" Display <Tab> with ^I, display end of line with $ (local to window)
set list

"" list of strings for list mode
set listchars=tab:>-,trail:-,eol:$,space:-  

"" line number for each line (local to window)
set number


"""****** 5. Grammar, highlight and spelling ******

"" "dark" or "light"; background color brightness
set background=dark

"" File Type: The FileType event is triggered at setup time
set filetype=text

"" Use the syntax to highlight the name
"set syntax=on
syntax on

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

"" Show cursor position below each window
set ruler

"" Open dialog when command fails
set confirm

""List of preferred languages for finding help
set helplang=cn

"""****** 13. Selecting text ******

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
	set undodir=~/vimfiles/backup
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

" edit .vimrc after source vimrc
autocmd bufwritepost $myvimrc source $myvimrc

"
language messages zh_cn.utf-8

colorscheme elflord

" load syntax menu
let do_syntax_sel_menu=1

" no lazyload menu
let do_no_lazyload_menus=1

"exit insert mode auto save
au insertleave *.go,*.sh,*.java write


"""----------------------------------------
"""=========== #Plugin Options ============
"""----------------------------------------

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


"""****** @vim-airline ******
plug 'vim-airline/vim-airline'
plug 'vim-airline/vim-airline-themes'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


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


"clipboard
vmap <leader>c "+yy
nmap <leader>c "+yy
nmap <leader>v "+p
