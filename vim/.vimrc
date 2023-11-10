" 2023-11-01 21:25:53
" vim.vimrc.enable": true,
" vim.vimrc.path": "C:/Users/79481/AppData/Roaming/Code/User/.vsvimrc"

"  模式        | Norm | Ins | Cmd | Vis | Sel | Opr | Term | Lang |
"  命令        +------+-----+-----+-----+-----+-----+------+------+
"  [nore]map   | yes  |  -  |  -  | yes | yes | yes |  -   |  -   |
"  n[nore]map  | yes  |  -  |  -  |  -  |  -  |  -  |  -   |  -   |
"  [nore]map!  |  -   | yes | yes |  -  |  -  |  -  |  -   |  -   |
"  i[nore]map  |  -   | yes |  -  |  -  |  -  |  -  |  -   |  -   |
"  c[nore]map  |  -   |  -  | yes |  -  |  -  |  -  |  -   |  -   |
"  v[nore]map  |  -   |  -  |  -  | yes | yes |  -  |  -   |  -   |
"  x[nore]map  |  -   |  -  |  -  | yes |  -  |  -  |  -   |  -   |
"  s[nore]map  |  -   |  -  |  -  |  -  | yes |  -  |  -   |  -   |
"  o[nore]map  |  -   |  -  |  -  |  -  |  -  | yes |  -   |  -   |
"  t[nore]map  |  -   |  -  |  -  |  -  |  -  |  -  | yes  |  -   |
"  l[nore]map  |  -   | yes | yes |  -  |  -  |  -  |  -   | yes  |

" text objects
" ii ai aI                                  //vim-indent-object
" ia aa                                     //vim-textobj-arguments
" ie ae                                     //vim-textobj-entire
" af                                        //visual mode select more
" ys{motion}"  ds"   cs'"   v_S'"           //surround
" s/S<char> <char> <operator>z/Z<char><char> // vim-sneak " gc gC                                     //vim-comment
" nnoremap j gj
" nnoremap k gk
" -------------------- base --------------------
" alt ; 与 g;
" alt , 与 g,
" 2g;
" :set nowrap
nnoremap <space>ar R
nnoremap <space>j J
inoremap jk <ESC>
inoremap jj <ESC>
" noremap J }
" noremap K {
" noremap J 10j
" noremap K 10k
nnoremap J :+10<CR>
nnoremap K :-10<CR>
vnoremap J }
vnoremap K {
onoremap J }
onoremap K {
noremap H 0
noremap L $
nnoremap Y ^y$
nnoremap n nzz
nnoremap N Nzz
nnoremap <Leader>n :<C-u>nohlsearch<CR>
" nnoremap <silent> <Leader>n :<C-u>nohlsearch<CR>
" vscodevim can't support g`

" 省略i
nnoremap cw "_ciw
nnoremap cW "_ciW
nnoremap yw yiw
nnoremap yW yiW
nnoremap d" "_di"
nnoremap c" "_ci"
nnoremap y" yi"
nnoremap cb "_cib

" surround nmap s" ysiw"
nmap s( ysiw(
nmap s{ ysiw{
nmap S" m_ysiW"`_
nmap S( ysiW(
nmap S{ ysiW{

" select a {} block
nnoremap yp Va{y
nnoremap dp Va{"_d
nnoremap Xp Va{d

" -------------------- clipboard --------------------
" # clipboard and reg setting
" n_X and v_x == cut
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
noremap C "_C
nnoremap dx dd
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
nnoremap x "_x
nnoremap X d
" vnoremap p pgvy
nnoremap <leader>p "_diwP
" -------------------- z fold --------------------
nnoremap z/ v/---\^<cr>o?\+---<cr>
nnoremap zz za
vnoremap zz za
nnoremap zr zR
nnoremap zm m`zM
" -------------------- <leader>f s 查找替换 --------------------
" 搜索剪贴板
nnoremap <leader>/ /<c-r>+<cr>
" 当前行/选中行替换
nnoremap <leader>s :s/
vnoremap <leader>s :s/ " 全局替换
nnoremap <leader>S :%s/
vnoremap <Leader>b :s/\%V./|/
" -------------------- /c 需要确认
" <cr> 用不了
" a 表示确认当前替换并接受所有后续替换。 " y 表示确认当前替换并继续。
" n 表示跳过当前替换，不进行替换。
" q 表示退出替换模式。
" l 表示确认替换最后一次匹配。 " <space>H/L 清除行首行尾空白
nnoremap <leader>fl :%s/[^\S\n]+$//<c-m>
nnoremap <leader>fh :%s/^[^\S\n]+//<c-m>
" 删除多余空行和行尾空白
nnoremap <leader>ff :%s/\n\s+/\n\n/<c-m>:%s/[^\S\n]+$//<c-m>

" -------------------- <leader>w window --------------------
" nnoremap <leader>w <c-w>
nnoremap <c-w> :q!<cr>
nnoremap <leader>wv <c-w>v
nnoremap <leader>wV <c-w>s
nnoremap <Leader>o :tabo<CR>
nmap <leader>` viwS`

" -------------------- <leader>x extension --------------------
" toggle boolean ,a-b
" nmap <leader>xb V\\1<esc>

" -------------------- <leader>m markdown --------------------
nnoremap <Leader>mk?\[\]\(<cr>wyi(hhhp
" inoremap [[ []()<left>
" nnoremap <Leader>w a[]()<left>
" nnoremap <Leader>i a!()[]()<left>

" inoremap <Leader>i \
" inoremap mmm !()[]<left>
" nmap <Leader>` viWS`

" -------------------- others --------------------
cnoremap <c-r> <c-r>+
nnoremap <Leader>; ;.
nnoremap R .
" nnoremap Q @q
" nnoremap Q zH
" nnoremap E zL
" vmap <tab> af
" noremap <c-g> `

" nnoremap gn /xxxx<cr>
" nnoremap gN ?xxxx<cr> " nnoremap gN ? \$\$\$<cr>

" -------------------- notes --------------------
"以下命令是跳转命令:
" ' ` G / ? n N % ( ) [[ ]] { } :s :tag L M H 和开始编辑新文件的命令。

" :1,10normal d2w
" :g/./normal wdwwP
" vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR> ;search select
" qa$S//40i <Esc>15|dwjq
" If you want to do it from the normal mode, just type: 15|. If you want to move
" to 15th column in 25th, type 25G15|. If you want to do it as a command you can
" type: :call cursor(25,15) but I think it is easier to type 25G15|.
" try vim-align plugn

" vimgolf
" batch rename:
" :read !ls *.cc
" :%s/\(.*\).cc/mv & \1.cpp
" :write !sh

" :g/正则表达式/操作
" :g/要删除的文本/d