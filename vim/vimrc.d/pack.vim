"" Vim plugins


" Use plugin manager
packadd minPlug         " https://github.com/Jorengarenar/minPlug

" Completion system
MinPlug lifepillar/vim-mucomplete
  let g:mucomplete#enable_auto_at_startup = 1
  let g:mucomplete#completion_delay       = 1
  set updatetime=500

" Table mode for rst
MinPlug! dhruvasagar/vim-table-mode
  \ | autocmd FileType rst packadd vim-table-mode

" Clipboard for vim -clipboard
MinPlug! Jorengarenar/fauxClip
  let g:fauxClip_copy_primary_cmd  = 'wl-copy --primary'
  let g:fauxClip_paste_primary_cmd = 'wl-paste --primary --no-newline'
  let g:fauxClip_copy_cmd          = 'wl-copy'
  let g:fauxClip_paste_cmd         = 'wl-paste --no-newline'
  packadd fauxClip

" Surrounding helper
MinPlug machakann/vim-sandwich
  " Map surround current line to ss
  onoremap <SID>line :normal! ^vg_<CR>
  nmap <silent> ss <Plug>(operator-sandwich-add)<SID>line

" Alignment helper
MinPlug tommcdo/vim-lion

" Better hlsearch
MinPlug romainl/vim-cool

" Safe edition (`pass edit ...`)
MinPlug tyjak/vim-redact-pass

" Template management
MinPlug aperezdc/vim-template
  let g:templates_directory            = $XDG_CONFIG_HOME . "/vim/templates"
  let g:templates_no_builtin_templates = 1


" Better % handling (jump)
packadd! matchit
