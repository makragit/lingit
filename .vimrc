source $VIMRUNTIME/defaults.vim

colorscheme pablo

syntax on
let python_highlight_all = 1 " Kan Plan

:imap jk <Esc>

"split navigations
set splitbelow
set splitright
"Use Ctrl+L to navigate splits
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K> 
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H> 

"Enable folding ( "za" )
"set foldmethod=indent
"set foldlevel=99
"folding with spacebar ( "_za" )
"nnoremap <space> za

"show line numbers
set number

" show matching part of the pair for ()
set showmatch

"VUNDLE SET UP 
set nocompatible              " required
filetype off                  " required

set showcmd
set hlsearch

"nnoremap <esc> :noh<return><esc>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vim :version -> +clipboard suchen -> wenn -clipboard dann vim neu
" installieren

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" :PluginInstall/PluginList/PluginClean
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"noremap <C-W>n :NERDTreeToggle<cr>
map <F2> :NERDTreeToggle<CR>
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'habamax/vim-godot'
"Plugin 'RRethy/vim-illuminate'

"Plugin 'kien/ctrlp.vim'
"Plugin ??? fzf fuzzy finder ???

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ##### NOTES #####
" OPEN TERMINAL
" :vertical terminal or :vert ter
