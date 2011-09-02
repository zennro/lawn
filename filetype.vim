augroup ftdetect-user
autocmd!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File type detection logic

" Objective J
autocmd BufRead,BufNewFile *.j setfiletype objj

" Less Stylesheets
autocmd BufRead,BufNewFile *.less setfiletype less

" Markdown
autocmd BufRead,BufNewFile *.mkd setfiletype mkd

" Flex/Flash related
autocmd BufRead,BufNewFile *.mxml setfiletype mxml
autocmd BufRead,BufNewFile *.as setfiletype actionscript

" Clojure
autocmd BufRead,BufNewFile *.clj setfiletype clojure

" GNUPlot
autocmd BufRead,BufNewFile *.plt setfiletype gnuplot

" log4j log files
autocmd BufRead,BufNewFile *.log setfiletype log4j

" Pipe separated log files
autocmd BufRead,BufNewFile *_SQL_*.log,*_REQUEST_*.log,*_CLIENTREQUEST_*.log,*_WORKFLOW_*.log
    \ setfiletype elog

" Cram test files
autocmd BufRead,BufNewFile *.t set filetype=cram

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File type specific preferences

autocmd Syntax make setlocal noet sts=0 ts=4 sw=4

autocmd FileType python setlocal cpt-=i

autocmd FileType yaml setlocal ai sts=2 ts=2 sw=2

autocmd FileType ruby,coffee setlocal sts=2 ts=2 sw=2

autocmd FileType vimwiki setlocal et ts=8 sw=2 sts=2 nolist spell
autocmd FileType conque_term setlocal nolist

autocmd FileType help nnoremap <buffer> <silent> q :q<CR>
autocmd FileType man nnoremap <buffer> <silent> q :q<CR>

augroup END
