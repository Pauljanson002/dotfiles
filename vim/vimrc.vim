" General Vim Settings
syntax enable
set encoding=utf8
set clipboard=unnamedplus " Enables clipboard integration with system clipboard
set completeopt=noinsert,menuone,noselect " Autocomplete menu behavior
set cursorline " Highlight the current line
set hidden " Hide unused buffers
set autoindent " Automatically indent new lines
set mouse=a " Enable mouse support
set number " Show line numbers
set tabstop=4 " Number of spaces per tab
set shiftwidth=4 " Number of spaces for indentation
set expandtab " Convert tabs to spaces
set dir=/tmp/ " Directory for swap files
set splitbelow splitright " Open splits below and to the right
set title " Show file title in the terminal
set wildmenu " Enhanced command-line completion
set guifont=hack_nerd_font:h11 " Font for GUI versions of Vim
"set cc=100 " Show column marker at 100 (commented out)

" Search and Highlighting
set hlsearch " Highlight search matches
set incsearch " Show search matches as you type
set pastetoggle=<F2> " Toggle paste mode with F2

" Cursor and Indentation
nnoremap n nzzzv " Center search results
nnoremap N Nzzzv " Center search results
nnoremap vv 0v$ " Select from start to end of line



" Clipboard Operations
"vnoremap <C-c> +y " Copy selection to clipboard
"nnoremap <C-v> +p " Paste from clipboard in normal mode
"inoremap <C-v> <C-r>+ " Paste from clipboard in insert mode

" Filetype Specific Settings
autocmd Filetype html setlocal sw=2 expandtab
autocmd Filetype javascript setlocal sw=4 expandtab

" Language Specific
" Include external tab settings
" so ~/dotfiles/vim/sleuth.vim (commented out if no access)

" Markup Settings
inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>

" File and Window Management
inoremap <leader>w <Esc>:w<CR> " Save file
nnoremap <leader>w :w<CR> " Save file

inoremap <leader>q <ESC>:q<CR> " Quit file
nnoremap <leader>q :q<CR> " Quit file

inoremap <leader>x <ESC>:x<CR> " Save and quit
nnoremap <leader>x :x<CR> " Save and quit

nnoremap <leader>e :Ex<CR> " Open file explorer
nnoremap <leader>t :tabnew<CR>:Ex<CR> " Open a new tab and file explorer
nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR> " Vertical split and file explorer
nnoremap <leader>s :split<CR>:w<CR>:Ex<CR> " Horizontal split and file explorer

" Return to the last edit position
augroup line_return
  au!
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   execute 'normal! g`"zvzz' |
    \ endif
augroup END

" Auto-reload and Notifications
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
set autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Future Improvements
" Swap lines
" Insert blank lines above and below

" Fix for vim-go issues
" https://github.com/fatih/vim-go/issues/1509

filetype plugin indent on
