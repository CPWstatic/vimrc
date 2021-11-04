let s:dotvim = fnamemodify(globpath(&rtp, 'vimrc'), ':p:h')

" Load vimrcs {{{
let s:basic = expand(s:dotvim . '/basic.vim')
if filereadable(s:basic)
    exec ':so ' . s:basic
endif

let s:pluginsconfig = expand(s:dotvim . '/plugins_config.vim')
if filereadable(s:pluginsconfig)
    exec ':so ' . s:pluginsconfig
endif

let s:filetypes = expand(s:dotvim . '/filetypes.vim')
if filereadable(s:filetypes)
    exec ':so ' . s:filetypes
endif

let s:extended = expand(s:dotvim . '/extended.vim')
if filereadable(s:extended)
    exec ':so ' . s:extended
endif

let s:myconfig = expand(s:dotvim . '/my_configs.vim')
if filereadable(s:myconfig)
    exec ':so ' . s:myconfig
endif

" }}}

