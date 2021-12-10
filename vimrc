call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'

call plug#end()

colorscheme onedark

let mapleader=","

filetype plugin indent on " enable filetype plugin and indent detection
syntax on " enable syntax highlighting

" indentationn
set expandtab " insert spaces when tab key is pressed
set tabstop=2 " 1 tab == 2 spaces
set shiftwidth=2 " 1 indentation == 2 spaces
set backspace=2 " start, indent
set nowrap " don't wrap text

set cursorline " highlight current line
set showmatch " highlight matching [{()}]

" splits
" use ctrl+h,j,k,l to navigate splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" folding
set nofoldenable " no folding by default
set foldmethod=syntax " fold based on language syntax
set foldnestmax=10 " deepest fold is 10 levels
set foldlevel=1 " fold one level at a time

set number " show line numbers

set nobackup " do not backup files
set noswapfile " also do not create swap files

set noshowmode "·mode is shown in the status bar

set clipboard=unnamed " copy/paste to clipboard

" show hidden characters
set list
set listchars=space:·,trail:·,tab:▸·,eol:¬

" ignore certain files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.DS_Store,*/node_modules,*/.git,*/vendor,*/vim/plugged

" Delete trailing white space and blank lines
fun! CleanExtraSpacesAndLines()
    " save cursor position and query
    let save_cursor = getpos(".")
    let old_query = getreg('/')

    silent! %s/\s\+$//e " remove trailing speces
    silent! %s#\($\n\s*\)\+\%$## " remove blank lines from the end of the file

    " retore cursor position and query
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
autocmd BufWritePre * :call CleanExtraSpacesAndLines()

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" configure the Fugitive pluging
nnoremap <silent> <leader>a :Git add %<cr>

" configure the fzf vim plugin
" empty value to disable preview window altogether
let g:fzf_preview_window = []

" popup window (anchored to the bottom of the current window)
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.4, 'relative': v:true, 'yoffset': 1.0 } }

nnoremap <silent> <leader>t :Files<CR>
nnoremap <silent> <leader>r :Buffers<CR>
nnoremap <silent> <leader>f :Rg<CR>

" configure the lightline plugin
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ }

" configure the NERDTree plugin
nnoremap <silent> <leader>n :NERDTreeFocus<cr>
nnoremap <silent> <leader>y :NERDTreeFind<cr>

let g:NERDTreeNaturalSort = 1
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeShowHidden = 1

" exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" configure the vim-go plugin
let g:go_fmt_command = "goimports"
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_types = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

" Confiugation code for colors from https://github.com/joshdick/onedark.vim#installation
" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    " For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  " Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
