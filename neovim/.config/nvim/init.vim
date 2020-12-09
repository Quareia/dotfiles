"============================ vim-plug ==================================

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'Yggdroot/indentLine' " align line
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline' " 状态栏插件
Plug 'vim-airline/vim-airline-themes'  
Plug 'jiangmiao/auto-pairs' " 自动引括号
Plug 'preservim/nerdcommenter' " 注释
Plug 'preservim/nerdtree' " 
Plug 'tomasr/molokai'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


"========================== vim preferences ============================== 

set ts=4
set expandtab
set autoindent
set smartindent
set number cursorline               " 行号+高亮当前行
set history=1000                    " 设置历史记录条数
set encoding=utf-8                  " 编码
set scrolloff=5                     " 光标下方至少 5 行
set hlsearch incsearch              " 搜索高亮
set ignorecase smartcase            " 搜索智能大小写
se mouse+=a                         " 复制时不加行号
set t_Co=256
set termguicolors
set clipboard=unnamed


"============================= Plugins Pref ==============================
let mapleader=","
let g:NERDSpaceDelims=1

"" indentLine
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

"" theme
" colorscheme dracula
colorscheme molokai 

" 修改注释颜色
hi Comment guifg=#829fb9
let g:rehash256=1


"" tree
autocmd vimenter * NERDTree
autocmd VimEnter * NERDTree | wincmd p   " 自动右边
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}



"============================= Scripts ====================================

" auto jump
" Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
