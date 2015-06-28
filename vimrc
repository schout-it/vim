autocmd! bufwritepost .vimrc source %

set pastetoggle=<F2>
set clipboard=unnamed

set mouse=a
set bs=2

let mapleader = ","

noremap <C-n> :nohl<CR>
vnoremap <C-n> <C-C>:nohl<CR>
inoremap <C-n> <C-O>:nohl<CR>

noremap <Leader>e :quit<CR>
noremap <leader>E :qa!<CR>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <Leader>q <esc>:tabprevious<CR>
map <leader>w <esc>:tabnext<CR>

vnoremap <Leader>s :sort<CR>
vnoremap < <gv
vnoremap > >gv

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

set t_Co=256
color wombat256mod

set nocompatible
filetype off

filetype plugin indent on
syntax on

set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

vmap Q gq
nmap Q gqap

set history=700
set undolevels=700

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'kien/ctrlp.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/UltiSnips'


set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "2"
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>u"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

set nofoldenable

map <F3> :NERDTreeToggle<CR>

vnoremap // y/<C-R>"<CR>

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetDir = '~/.vim/UltiSnips'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
