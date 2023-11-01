" C:\Users\79481\AppData\Roaming\Code\User\vsinit.vim
" ==================== basic setting ====================
"  if exists('g:vscode')
"      something
"  endif
"  nmap a aaaaa
"  模式           | Norm | Ins | Cmd | Vis | Sel | Opr | Term | Lang | 
"  命令           +------+-----+-----+-----+-----+-----+------+------+ 
"  [nore]map      | yes  |  -  |  -  | yes | yes | yes |  -   |  -   |
"  n[nore]map     | yes  |  -  |  -  |  -  |  -  |  -  |  -   |  -   |
"  [nore]map!     |  -   | yes | yes |  -  |  -  |  -  |  -   |  -   |
"  i[nore]map     |  -   | yes |  -  |  -  |  -  |  -  |  -   |  -   |
"  c[nore]map     |  -   |  -  | yes |  -  |  -  |  -  |  -   |  -   |
"  v[nore]map     |  -   |  -  |  -  | yes | yes |  -  |  -   |  -   |
"  x[nore]map     |  -   |  -  |  -  | yes |  -  |  -  |  -   |  -   |
"  s[nore]map     |  -   |  -  |  -  |  -  | yes |  -  |  -   |  -   |
"  o[nore]map     |  -   |  -  |  -  |  -  |  -  | yes |  -   |  -   |
"  t[nore]map     |  -   |  -  |  -  |  -  |  -  |  -  | yes  |  -   |
"  l[nore]map     |  -   | yes | yes |  -  |  -  |  -  |  -   | yes  |
"  bug 用了v经常光标对不上,同步有问题
"  zf 有bug
" c-/ 会抖 难解决
" https://github.com/vscode-neovim/vscode-neovim/blob/00d594e0ca/vim/vscode-code-actions.vim
" 用vim写的所以不用lua
nmap j gj
nmap k gk
let maplocalleader = "\\"
let mapleader=" "
nnoremap <leader>s :source C:\\Users\\79481\\AppData\\Roaming\\Code\\User\\vsinit.vim<CR> 
"  c-/
nnoremap <C-/> <cmd>call VSCodeNotify("editor.action.commentLine")<cr>
vnoremap <C-/> <cmd>call VSCodeNotifyRange("editor.action.commentLine",line("v"),line("."), 1)<cr>gv
" fold
vnoremap <silent> zf <cmd>call VSCodeNotifyVisual('editor.createfoldingrangefromselection',1)<cr> 
nnoremap <silent> zd <cmd>call VSCodeNotify('editor.removemanualfoldingranges')<cr>
nnoremap <silent> za <cmd>call VSCodeNotify('editor.togglefold')<cr>
nnoremap <silent> zr <cmd>call VSCodeNotify('editor.unfoldall')<cr>
nnoremap <silent> zm <cmd>call VSCodeNotify('editor.foldall')<cr>
nnoremap <silent> zo <Cmd>call VSCodeNotify('editor.unfold')<CR>

nnoremap <silent> zO <Cmd>call VSCodeNotify('editor.unfoldRecursively')<CR>
nnoremap <silent> zc <Cmd>call VSCodeNotify('editor.fold')<CR>
nnoremap <silent> zC <Cmd>call VSCodeNotify('editor.foldRecursively')<CR>

nnoremap <silent> z1 <Cmd>call VSCodeNotify('editor.foldLevel1')<CR>
nnoremap <silent> z2 <Cmd>call VSCodeNotify('editor.foldLevel2')<CR>
nnoremap <silent> z3 <Cmd>call VSCodeNotify('editor.foldLevel3')<CR>
nnoremap <silent> z4 <Cmd>call VSCodeNotify('editor.foldLevel4')<CR>
nnoremap <silent> z5 <Cmd>call VSCodeNotify('editor.foldLevel5')<CR>
nnoremap <silent> z6 <Cmd>call VSCodeNotify('editor.foldLevel6')<CR>
nnoremap <silent> z7 <Cmd>call VSCodeNotify('editor.foldLevel7')<CR>

xnoremap <silent> zV <Cmd>call VSCodeNotify('editor.foldAllExcept')<CR>
"  nnoremap c \"_c
"  nnoremap d \"_d
"  nmap dw diw
"  nmap d" di"
"  nmap cw ciw
"  nmap c" ci"
"  nnoremap yw m_yiw`_
"  nnoremap y" m_yi"`_
"  " nnoremap p \"+p
"  " nnoremap y \"+y
"  vnoremap p pgvy
"  inoremap jk <ESC>
"  inoremap jj <ESC>

"  onoremap p i(
"  " :onoremap in( :<c-u>normal! f(vi(<cr>
"  " imap <c-d> <esc>ddi
"  nnoremap z/ v/\/\/ -<CR>o/\/\/ \+<CR>o
"  " leader
"  nnoremap <silent> <Leader>n :<C-u>nohlsearch<CR><C-l>
"  nnoremap stf :s/\<false\>/treu/g<CR>:s/\<true\>g/g<CR>:s/\<treu\>g/g<CR>
"  nnoremap <leader>tf :s/\<false\>g/g
"  nnoremap <Leader>t <C-]>
"  nnoremap <Leader>T <C-t>
"  nnoremap <Leader>q :q!<CR>
"  nnoremap <Leader>w :w<CR>
"  noremap H ^
"  noremap L $
"  nnoremap n nzzzv
"  nnoremap N Nzzzv
"  " nnoremap J m_J`_

"  lua
"  vim.g.mapleader = " "
"  vim.g.maplocalleader = " "
"  local map = vim.api.nvim_set_keymap
"  local opt = {noremap = true, silent = false }
"  local opts = {noremap = true, silent = true }
"  map("n", "<leader>s", ":source C:\\Users\\79481\\AppData\\Roaming\\Code\\User\\vsinit.lua<CR>", opt)
"  map("n","j","gj",opt)
"  map("i", "jj", "<ESC>", opt)

"  map("t", "jk", "<ESC>", opt)
"  map("t", "jj", "<ESC>", opt)
"  map("i", "jk", "<ESC>", opt)
"  map("n", "<A-j>", "<cmd>move +1<CR>", opt)
"  map("v", "<A-j>", ":move '>+1<CR>gv-gv", opt)
"  map("v", "<A-k>", ":move '<-2<CR>gv-gv", opt)
"  map("n", "<A-k>", ":move -2<CR>", opt)
"  -- nnnjk
"  --- leader
"  -- map("t","<C-a>","<Esc>aaaaa",opt)

"  map("v","c","\"_c",opt)
"  vim.o.showcmd = true
"  vim.o.cmdheight = 2

"  -- map("i","a","abbbb",opt) imap无效的
"  -- map("n","a","<Esc>abbbaaaa",opt)


"  --[[
"  map("v","<a-j>",":'<,'>m+1gv",opt)
"  map("n","c","\"_c",opt)

"  -- 上下移动选中文本
"  map("n", "s", "", opt)
"  -- 取消 s 默认功能
"      -- windows 分屏快捷键
"  map("n", "ss", ":sp<CR>", opt)
"  map("n", "sv", ":vsp<CR>", opt)
"  map("n", "sc", "<C-w>c", opt)
"  map("n", "so", "<C-w>o", opt)
"  map("n", "<C-j>", "<C-w>j", opt)
"  -- Alt + hjkl  窗口之间跳转
"  map("n", "<C-h>", "<C-w>h", opt)
"  map("n", "<C-k>", "<C-w>k", opt)
"  map("n", "<C-l>", "<C-w>l", opt)
"  map("t", "<Esc>", "<C-\\><C-n>", opt)
"  --]]
"  map("t", "<C-h>", [[ <C-\><C-N><C-w>h ]], opt)
"  map("t", "<C-j>", [[ <C-\><C-N><C-w>j ]], opt)
"  map("t", "<C-k>", [[ <C-\><C-N><C-w>k ]], opt)
"  map("t", "<C-l>", [[ <C-\><C-N><C-w>l ]], opt)
"  --- 窗口大小比例控制
"  map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
"  map("n", "s,", ":vertical resize -20<CR>", opt)
"  map("n", "sk", ":resize -10<CR>", opt)
"  map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
"  map("n", "s.", ":vertical resize +20<CR>", opt)
"  map("n", "sj", ":resize +10<CR>", opt)
"  map("n", "<C-Down>", ":resize +2<CR>", opt)
"  map("n", "<C-Up>", ":resize -2<CR>", opt)
"  map("n", "s=", "<C-w>=", opt)

"  -- insert 模式下，跳到行首行尾

"  map("i", "<C-h>", "<ESC>I", opt)
"  map("i", "<C-l>", "<ESC>A", opt)

"  -- 在visual 模式里粘贴不要复制

"  map("v", "p", '"_dP', opt)
"  map("n", "<leader>t", ":sp | terminal<CR>", opt)

"  map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
"  map("n", "<leader>w", ":Write<CR>", opt)
"  map("n", "<leader>q", ":q<CR>", opt)
"  -- map("n", "<leader>s", ":source %<CR>", opt)
"  map("n", "<leader>Q", ":qa!<CR>", opt)
"  map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
"  map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
"  map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)
"  map("n","<leader>p",":echo expand('%:p')<CR>",opt)
"  map("n", "<leader>e", ":NvimTreeToggle<CR>", opt)
"  map("n","<leader>f",":Format<CR>",opt)
"  -- Telescope
"  -- 查找文件
"  map("n", "<C-f>", ":Telescope find_files<CR>", opt)
"  -- 全局搜索
"  map("n", "<C-F>", ":Telescope live_grep<CR>", opt)

"  map("n","<A-q>",":bp<CR>",opt)
"  map("n","<A-e>",":bn<CR>",opt)
"  map("n", "<A-w>", ":Bdelete!<CR>", opt) --"moll/vim-bbye"


"  ---------------------- 插件快捷键
"  local pluginKeys = {}


"  -- bufferline
"  map("n", "<a-a>", ":BufferLineCyclePrev<CR>", opt)
"  map("n", "<a-d>", ":BufferLineCycleNext<CR>", opt)

    