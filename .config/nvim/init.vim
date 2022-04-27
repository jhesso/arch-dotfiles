set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set nohlsearch
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set cmdheight=2
set updatetime=50

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'Townk/vim-autoclose'
call plug#end()

let g:lightline = {
	\ 'Colorscheme': 'wombat',
\ }
colorscheme catppuccin
highlight Normal guibg=none

fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

augroup jhesso
	autocmd!
	autocmd BufWritePre * :call TrimWhitespace()
augroup END
