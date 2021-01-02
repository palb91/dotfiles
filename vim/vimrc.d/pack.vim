"" Vim plugins


" Use plugin manager
packadd minPlug         " https://github.com/Jorengarenar/minPlug


" Completion system
MinPlug ajh17/VimCompletesMe


" Table mode for rst
MinPlug! dhruvasagar/vim-table-mode
  \ | autocmd FileType rst packadd vim-table-mode


" Clipboard for vim -clipboard
MinPlug! Jorengarenar/fauxClip
let g:fauxClip_copy_primary_cmd  = 'wl-copy'
let g:fauxClip_paste_primary_cmd = 'wl-paste --no-newline'
let g:fauxClip_copy_cmd          = 'wl-copy'
let g:fauxClip_paste_cmd         = 'wl-paste --no-newline'
packadd fauxClip


MinPlug machakann/vim-sandwich
" Surrounding helper


" Alignment helper
MinPlug tommcdo/vim-lion


" Better hlsearch
MinPlug romainl/vim-cool


" Safe edition (`pass edit ...`)
MinPlug tyjak/vim-redact-pass


" Better % handling (jump)
packadd! matchit
