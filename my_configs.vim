" . folding {{{

set foldlevelstart=0
set foldmethod=indent

" Space to toggle folds.
nnoremap <space> za
vnoremap <space> za

" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nnoremap zO zCzO

" Use ,z to "focus" the current fold.
nnoremap <leader>z zMzvzz

" }}}

nmap <tab> :NERDTreeToggle<cr>

set number
if exists('+relativenumber')
  set relativenumber
endif
set numberwidth=4
