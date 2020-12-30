"" Vim mapping


" General
let mapleader = "\<Space>"


" Buffer selection
nnoremap gb        :ls<CR>:buffer<Space>
nnoremap <silent>é :bprevious<CR>
nnoremap <silent>è :bnext<CR>


" Quickfix navigation
nnoremap « :<C-U>exe v:count . 'cprev'<CR>
nnoremap » :<C-U>exe v:count . 'cnext'<CR>


" Indentation
vnoremap < <gv
vnoremap > >gv


" Leave modes
vnoremap q     <C-c>
inoremap <C-c> <Esc>


" Completion
inoremap <C-F> <C-X><C-F>


" cmdline
cabbrev Q  q
cabbrev WQ wq
cabbrev wQ wq
cabbrev Wq wq
cabbrev X  x


" Next hit while searching (-romainl-)
cnoremap <expr> <Tab>   getcmdtype() =~ '[\/?]' ? '<C-g>' : '<Tab>'
cnoremap <expr> <S-Tab> getcmdtype() =~ '[\/?]' ? '<C-t>' : '<S-Tab>'
