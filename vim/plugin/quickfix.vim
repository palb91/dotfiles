"" Vim quickfix


" Automatically open the qf when needed
augroup QuickFixOpen
  autocmd!
  autocmd QuickFixCmdPost [^l]* cwindow
augroup End
