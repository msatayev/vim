"create simlink from .vimrc to .vim/vimrc
filetype on
syntax on
colorscheme vividchalk
set guifont=Menlo\ Regular:h18
set number
" map leader to be space used for commands in vim
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
" increase stored history
set hidden
set history=100
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
" map keys up down in vim
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W
" swithcing between previous file and current
nnoremap <Leader><Leader> :e#<CR>
" show match barces
set showmatch
" install plugin management system pathoget
" might need to run
"
"mkdir -p ~/.vim/autoload ~/.vim/bundle && \
"curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
execute pathogen#infect()
"remove whitespace at save
autocmd BufWritePre * :%s/\s\+$//e
"highlight search results
set hlsearch
"shortcut for reindexing files in command-t search
" command-t needs "rake make" in plugin folder
noremap <Leader>r :CommandTFlush<CR>
"automatically open tree in vim
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
"show hidden files in tree
let NERDTreeShowHidden=1
"ignore useless files in tree
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
" toggle display of tree on leader+n
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
"turn on mouse support
set mouse=a
