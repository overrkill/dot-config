" nvim  config 
" - Author -
"  __                                
" /\_\/      _  ,_   ,_  |)  o |\ |\ 
"|    ||  |_|/ /  | /  | |/) | |/ |/ 
" \__/  \/  |_/   |/   |/| \/|/|_/|_/
"github - http://github.com/overrkill
"
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin('~/.vim/plugged')
"my plugins	
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-syntastic/syntastic'
Plug 'mhinz/vim-signify'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'
call plug#end()

"filetype plugin
filetype plugin on

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Change default split behav
set splitright
set splitbelow




" custom KEYbinding
noremap <C-E> :NERDTreeToggle<cr> 

"customization
set nu rnu

" INdentation
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation

"global clipboard
set clipboard=unnamed

"airline stuff
let g:airline#extensions#tabline#enabled = 1


"colorscheme
colorscheme gruvbox

"colorizer stuff

set termguicolors
lua require'colorizer'.setup()

"set bg transparent
hi! Normal ctermbg=NONE guibg=NONE

"italic comment
hi! Comment cterm=italic gui=italic

"compile comes first
autocmd filetype cpp nnoremap <F5> :!g++ %  && ./a.out <CR>
"autocmd filetype cpp nnoremap <F5> : ./a.out <CR> !! for some reason this
"gives nosymbol found
