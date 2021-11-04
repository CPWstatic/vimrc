let s:dotvim = fnamemodify(globpath(&rtp, 'vimrc'), ':p:h')

" Load vimrcs {{{
let s:basic = expand(s:dotvim . '/vimrcs/basic.vim')
if filereadable(s:basic)
    exec ':so ' . s:filetypes
endif

let s:extended = expand(s:dotvim . '/vimrcs/extended.vim')
if filereadable(s:extended)
    exec ':so ' . s:filetypes
endif

let s:filetypes = expand(s:dotvim . '/vimrcs/filetypes.vim')
if filereadable(s:filetypes)
    exec ':so ' . s:filetypes
endif

let s:pluginsconfig = expand(s:dotvim . '/vimrcs/plugins_config.vim')
if filereadable(s:pluginsconfig)
    exec ':so ' . s:pluginsconfig
endif
" }}}

