"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('.dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('kien/ctrlp.vim')
call dein#add('elixir-lang/vim-elixir')
call dein#add('scrooloose/syntastic')
call dein#add('easymotion/vim-easymotion')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-vinegar')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
" if dein#check_install()
"  call dein#install()
" endif

"End dein Scripts-------------------------

" let g:sierra_Pitch = 1
" colorscheme onedark
set number

" Easy Motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }


