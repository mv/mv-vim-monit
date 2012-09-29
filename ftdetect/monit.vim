"
" file type detect: monit
"

autocmd BufNewFile,BufRead */monit.d/*.cfg        set filetype=monit ts=2 sts=2 sw=2 et nowrap
autocmd BufNewFile,BufRead */monit/conf.d/*.cfg   set filetype=monit ts=2 sts=2 sw=2 et nowrap
autocmd BufNewFile,BufRead */monit.d/*.conf       set filetype=monit ts=2 sts=2 sw=2 et nowrap
autocmd BufNewFile,BufRead */monit/conf.d/*.conf  set filetype=monit ts=2 sts=2 sw=2 et nowrap

" vim:ft=vim:

