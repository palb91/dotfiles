"" Vim colorscheme


" Init
hi clear
if exists("syntax_on") | syntax reset | endif
let g:colors_name = "nighty"
set background=dark


" Set colors
hi LineNr       ctermfg=235
hi CursorLineNr ctermfg=250              cterm=NONE
hi CursorLine               ctermbg=233  cterm=NONE
hi EndOfBuffer  ctermfg=235
hi ColorColumn  ctermfg=196 ctermbg=233
hi SpecialKey   ctermfg=63
hi VertSplit    ctermfg=238              cterm=NONE
hi Visual                   ctermbg=238
hi Search       ctermfg=255 ctermbg=33
hi IncSearch    ctermfg=255 ctermbg=27
hi Todo         ctermfg=160 ctermbg=NONE cterm=bold
hi Comment      ctermfg=240

hi Pmenu        ctermfg=244 ctermbg=235
hi PmenuSel     ctermfg=39  ctermbg=235  cterm=bold
hi PmenuSbar    ctermfg=240
hi PmenuThumb               ctermbg=235

hi StatusLine   ctermfg=240              cterm=NONE
hi StatusLineNC ctermfg=235              cterm=NONE
hi User1        ctermfg=231              cterm=NONE
hi User2        ctermfg=196
hi WildMenu     ctermfg=39  ctermbg=NONE cterm=bold
