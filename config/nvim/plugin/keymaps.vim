
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

" hop.nvim
nnoremap <leader>hl <cmd>HopLineStart<cr>
nnoremap <leader>hc <cmd>HopChar2<cr>

" vimtex
nnoremap <leader>li <cmd>VimtexInfo<cr>
nnoremap <leader>lI <cmd>VimtexInfo!<cr>
nnoremap <leader>lt <cmd>VimtexTocOpen<cr>
nnoremap <leader>lT <cmd>VimtexTocToggle<cr>
nnoremap <leader>lq <cmd>VimtexLog<cr>
nnoremap <leader>lv <cmd>VimtexView<cr>
nnoremap <leader>ll <cmd>VimtexCompile<cr>
nnoremap <leader>lL <cmd>VimtexCompileSelected<cr>
nnoremap <leader>lk <cmd>VimtexStop<cr>
nnoremap <leader>lK <cmd>VimtexStopAll<cr>
nnoremap <leader>le <cmd>VimtexErrors<cr>
nnoremap <leader>lo <cmd>VimtexCompileOutput<cr>
nnoremap <leader>lg <cmd>VimtexStatus<cr>
nnoremap <leader>lG <cmd>VimtexStatus!<cr>
nnoremap <leader>lc <cmd>VimtexClean<cr>
nnoremap <leader>lC <cmd>VimtexClean!<cr>
nnoremap <leader>lm <cmd>VimtexImapsList<cr>
nnoremap <leader>lx <cmd>VimtexReload<cr>
nnoremap <leader>lX <cmd>VimtexReloadState<cr>
nnoremap <leader>ls <cmd>VimtexToggleMain<cr>
nnoremap <leader>la <cmd>VimtexContextMenu<cr>

" Run python script
nnoremap <leader>r <cmd>!python3 %<cr>

" Toggle undo tree
nnoremap <leader>ut :UndotreeToggle<cr>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fr <cmd>Telescope git_files<cr>

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

