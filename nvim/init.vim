syntax on

set noerrorbells
set relativenumber
set nu
set expandtab
set tabstop=4 softtabstop=4
set shiftwidth=4
set hidden
set autoindent
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set ignorecase
set smartcase
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set backspace=indent,eol,start "let me del plz
set termguicolors
set mouse=a "mouse scroll

highlight ColorColumn ctermbg=15 guibg=White

" Install and run vim-plug on first run
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" No delay on ESC
set ttimeout
set ttimeoutlen=100
set timeoutlen=3000

" Load plugins
so ~/.config/nvim/plugins.vim

" Theme
set bg=light
colorscheme PaperColor

" Set updatetime, mostly for gitgutter
set updatetime=100

" Mappings
let mapleader=" "
nnoremap <C-p> :Files<CR>

" Vim Command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>


" COC
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent><Leader>gd <Plug>(coc-definition)
nmap <silent><Leader>gy <Plug>(coc-type-definition)
nmap <silent><Leader>gi <Plug>(coc-implementation)
nmap <silent><Leader>gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" FZF
" command! -bang GFiles call fzf#vim#gitfiles('git ls-files . --exclude-standard --others', <bang>0)
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
         

" NERDTree
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalMenu=1

" NERDCommenter
let g:NERDCreateDefaultMappings = 1


" Prettier
" Autoformat when config file is present
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

" JSDoc
