if &compatible
  set nocompatible               " Be iMproved
endif

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'davidhalter/jedi-vim'
Plug 'flazz/vim-colorschemes'
Plug 'mhartington/oceanic-next'
Plug 'freeo/vim-kalisi'
Plug 'rking/ag.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
" Plug 'dkprice/vim-easygrep'

call plug#end()

" Required:
filetype plugin indent on

" let g:sierra_Pitch = 1
colorscheme onedark
set number
set nowrap

" Easy Motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" Tagbar
nmap <F8> :TagbarToggle<CR>

" Leave Ex mode
nnoremap Q <nop>

" True Color
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Invisible chars
" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< 
" set list

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  " set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
end

" CtrlP 
let g:ctrlp_working_path_mode = ''

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Auto Reload $MYVIMRC after save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

