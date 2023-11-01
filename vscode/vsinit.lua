-- C:\Users\79481\AppData\Roaming\Code\User\vsinit.lua
--[[
代码块
vim.api.nvim_set_keymap() 全局快捷键
vim.api.nvim_buf_set_keymap() Buffer 快捷键
vim.api.nvim_set_keymap('模式', '按键', '映射为', 'options')
if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
end
--]]
-- alt j k movelineup很卡所以不用nvim了
-- ==================== basic setting ====================
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = false }
local opts = {noremap = true, silent = true }
map("n", "<leader>s", ":source C:\\Users\\79481\\AppData\\Roaming\\Code\\User\\vsinit.lua<CR>", opt)
map("n","j","gj",opt)
map("i", "jj", "<ESC>", opt)

map("t", "jk", "<ESC>", opt)
map("t", "jj", "<ESC>", opt)
map("i", "jk", "<ESC>", opt)
map("n", "<A-j>", "<cmd>move +1<CR>", opt)
map("v", "<A-j>", ":move '>+1<CR>gv-gv", opt)
map("v", "<A-k>", ":move '<-2<CR>gv-gv", opt)
map("n", "<A-k>", ":move -2<CR>", opt)
-- nnnjk
--- leader
-- map("t","<C-a>","<Esc>aaaaa",opt)

map("v","c","\"_c",opt)
vim.o.showcmd = true
vim.o.cmdheight = 2

-- map("i","a","abbbb",opt) imap无效的
-- map("n","a","<Esc>abbbaaaa",opt)


--[[
map("v","<a-j>",":'<,'>m+1gv",opt)
map("n","c","\"_c",opt)

-- 上下移动选中文本
map("n", "s", "", opt)
-- 取消 s 默认功能
    -- windows 分屏快捷键
map("n", "ss", ":sp<CR>", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)
map("n", "<C-j>", "<C-w>j", opt)
-- Alt + hjkl  窗口之间跳转
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
--]]
map("t", "<C-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<C-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<C-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<C-l>", [[ <C-\><C-N><C-w>l ]], opt)
--- 窗口大小比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)
map("n", "sj", ":resize +10<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "s=", "<C-w>=", opt)

-- insert 模式下，跳到行首行尾

map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

-- 在visual 模式里粘贴不要复制

map("v", "p", '"_dP', opt)
map("n", "<leader>t", ":sp | terminal<CR>", opt)

map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("n", "<leader>w", ":Write<CR>", opt)
map("n", "<leader>q", ":q<CR>", opt)
-- map("n", "<leader>s", ":source %<CR>", opt)
map("n", "<leader>Q", ":qa!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)
map("n","<leader>p",":echo expand('%:p')<CR>",opt)
map("n", "<leader>e", ":NvimTreeToggle<CR>", opt)
map("n","<leader>f",":Format<CR>",opt)
-- Telescope
-- 查找文件
map("n", "<C-f>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-F>", ":Telescope live_grep<CR>", opt)

map("n","<A-q>",":bp<CR>",opt)
map("n","<A-e>",":bn<CR>",opt)
map("n", "<A-w>", ":Bdelete!<CR>", opt) --"moll/vim-bbye"


---------------------- 插件快捷键
local pluginKeys = {}


-- bufferline
map("n", "<a-a>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<a-d>", ":BufferLineCycleNext<CR>", opt)

--]]
    