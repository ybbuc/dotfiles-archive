" Remap ; to : for the sake of convenience
nnoremap ; :

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Buffers
nnoremap <silent> <A-,> <cmd>BufferPrevious<cr>
nnoremap <silent> <A-.> <cmd>BufferNext<cr>
nnoremap <silent> <A-<> <cmd>BufferMovePrevious<cr>
nnoremap <silent> <A->> <cmd>BufferMoveNext<cr>
nnoremap <silent> <A-1> <cmd>BufferGoto 1<cr>
nnoremap <silent> <A-2> <cmd>BufferGoto 2<cr>
nnoremap <silent> <A-3> <cmd>BufferGoto 3<cr>
nnoremap <silent> <A-4> <cmd>BufferGoto 4<cr>
nnoremap <silent> <A-5> <cmd>BufferGoto 5<cr>
nnoremap <silent> <A-6> <cmd>BufferGoto 6<cr>
nnoremap <silent> <A-7> <cmd>BufferGoto 7<cr>
nnoremap <silent> <A-8> <cmd>BufferGoto 8<cr>
nnoremap <silent> <A-9> <cmd>BufferGoto 9<cr>
nnoremap <silent> <A-0> <cmd>BufferLast<cr>
nnoremap <silent> <A-c> <cmd>BufferClose<cr>

" Toggle undo tree
nnoremap <leader>ut :UndotreeToggle<cr>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fs <cmd>Telescope symbols<cr>

" Trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

map({'n', 'v'}, '<leader>hs', ':Gitsigns stage_hunk<cr>')
map({'n', 'v'}, '<leader>hr', ':Gitsigns reset_hunk<cr>')
map('n', '<leader>hS', gs.stage_buffer)
map('n', '<leader>hu', gs.undo_stage_hunk)
map('n', '<leader>hR', gs.reset_buffer)
map('n', '<leader>hp', gs.preview_hunk)
map('n', '<leader>hb', function() gs.blame_line{full=true} end)
map('n', '<leader>tb', gs.toggle_current_line_blame)
map('n', '<leader>hd', gs.diffthis)
map('n', '<leader>hD', function() gs.diffthis('~') end)
map('n', '<leader>td', gs.toggle_deleted)

nnoremap <leader>wk <cmd>WhichKey<cr>

