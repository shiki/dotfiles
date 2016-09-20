
" change the leader to be a comma vs slash
let mapleader=","              

call plug#begin()

" Plugin choices were initially based on https://davidosomething.com/blog/vim-for-javascript/

Plug 'Shougo/unite.vim'
    \| Plug 'Shougo/vimfiler.vim'
    \| Plug 'Shougo/unite-outline'
    \| Plug 'tsukkee/unite-tag'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'sheerun/vim-polyglot'

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install --global tern' }
Plug 'heavenshell/vim-jsdoc'
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/jspc.vim'

Plug 'itchyny/lightline.vim'
Plug 'mileszs/ack.vim'

Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

call plug#end()

" --------------------------------------------------------------------------------------------------
" UI
" --------------------------------------------------------------------------------------------------
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12.00

" We are using dark background in vim
set background=dark           

" Margin
set colorcolumn=100

" Toggle to paste code properly http://unix.stackexchange.com/a/199207
set pastetoggle=<F2>

" Show title in console title bar
set title                     

set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
" using only 1 column (and 1 space) while possible
set numberwidth=1             

" show context around current cursor position
set scrolloff=8
set sidescrolloff=16

" highlight the current line in every window 
"set cursorline

" don't syntax highlight long lines
set synmaxcol=512                     

" always show all statuslines
set laststatus=2                      

" show incomplete commands (SLOW so off)
set noshowcmd                         
" don't show -- INSERT -- in cmdline
set noshowmode                        

" no beeps or flashes
set visualbell t_vb=

" --------------------------------------------------------------------------------------------------
" Basic
" --------------------------------------------------------------------------------------------------

" don't wrap lines
set nowrap        
" default to spaces instead of tabs
set expandtab
" softtabs are 2 spaces for expandtab
set shiftwidth=2  " number of spaces to use for autoindenting
" Alignment tabs are two spaces, and never tabs. Negative means use same as
" shiftwidth (so the 2 actually doesn't matter).
set softtabstop=-2
" real tabs render width. Applicable to HTML, PHP, anything using real tabs.
" I.e., not applicable to JS.
set tabstop=2     
" allow backspacing over everything in insert mode
set backspace=indent,eol,start 
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround    
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab      

" highlight search terms
set hlsearch      
" show search matches as you type
set incsearch     
" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase     
" set show matching parenthesis
set showmatch     
" ignore case when searching
set ignorecase    

" make the new window appear below the current window.
set splitbelow
" make the new window appear on the right.
set splitright
" Vertical sep between windows (unicode)
set fillchars=vert:│                  
" remember undo after quitting
set hidden                            

" --------------------------------------------------------------------------------------------------
" Saving
" --------------------------------------------------------------------------------------------------
" No swap files, use version control instead
set noswapfile 

set backupskip=/tmp/*
set backupskip+=,/private/tmp/*"
execute 'set backupdir=~/.config/nvim/.tmp/backup//'
set backup

" undo files
" double slash means create dir structure to mirror file's path
set undofile
set undolevels=1000
set undoreload=10000
execute 'set undodir=~/.config/nvim/.tmp/undo//'

" --------------------------------------------------------------------------------------------------
" Editing
" --------------------------------------------------------------------------------------------------
" Make + and - add a blank line below or above respectively
nmap + :put =''<CR>
nmap - :put! =''<CR>

" Quickly time out on keycodes, but never time out on mappings
set notimeout 
set ttimeout 
set ttimeoutlen=10

" Make vim use the system clipboard
set clipboard^=unnamed,unnamedplus

" --------------------------------------------------------------------------------------------------
" Navigation
" --------------------------------------------------------------------------------------------------
" ctrl+l and ctrl+h to move to next and previous buffers
" http://syskall.com/my-biggest-vim-productivity-boost/
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>

" --------------------------------------------------------------------------------------------------
" The Silver Searcher
" --------------------------------------------------------------------------------------------------
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  " Use silver searcher for Ack.vim"
  let g:ackprg = 'ag --vimgrep'
endif

" --------------------------------------------------------------------------------------------------
" Syntastic
" --------------------------------------------------------------------------------------------------

" Use ESLint
let g:syntastic_javascript_checkers = ['eslint']

" --------------------------------------------------------------------------------------------------
" FZF
" --------------------------------------------------------------------------------------------------
nnoremap <C-P> :Files<cr>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" --------------------------------------------------------------------------------------------------
" Unite
" --------------------------------------------------------------------------------------------------
" Refs: 
"   http://veelenga.com/editors/getting-started-with-unite-vim/
"   https://gist.github.com/copitux/6434354
"   https://github.com/wikimatze/vimfiles/blob/master/settings/unite.vim
"
let g:unite_prompt = '» '
let g:unite_winheight = 15
let g:unite_update_time = 200
let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']

autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  nmap <buffer> <ESC> <Plug>(unite_exit)

  imap <silent><buffer><expr> <C-s> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')

  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
endfunction
