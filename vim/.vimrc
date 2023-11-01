" ~/.vimrc
" 最小化配置
" todo :剪贴板,底部状态栏showmode,hlsearch等等,找到之前的vimrc
inoremap jk <esc>
noremap J }
noremap K {
noremap H 0
noremap L $
nnoremap <space>j J
nnoremap <c-s> :<c-u>w<cr>

nnoremap <a-j>  :move +1<CR>
nnoremap <a-k>  :move -2<CR>
vnoremap <a-j> :move '<-2<CR>gv-gv
vnoremap <a-k> :move '>+1<CR>gv-gv