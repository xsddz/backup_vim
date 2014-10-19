set nocompatible  " 禁用vi兼容模式

" autocmd! bufwritepost _vimrc source %   " 自动加载配置文件，但用vim修改配置文件并保存时

"common conf {{

set helplang=cn         " 帮助系统设置为中文，下载中文帮助包安装后，才会有效

set fileencodings=utf-8,gbk   " 使用utf-8或gbk打开文件

if has('gui_running')
    set guifont=Consolas:h9:cANSI   " 设置字体
else
    set t_Co=256
endif

syn on                  " 语法支持

set ai                  " 自动缩进
set bs=2                " 在insert模式下用退格键删除
set showmatch           " 代码匹配
set laststatus=2        " 总是显示状态行

set autoindent          " 开启自动缩进功能
" set cindent             " 开启 C 语言缩进功能，默认关闭
set smartindent         " 开启对C语言等类似语言的智能缩进功能，
                        " 较cindent出色，且在cindent关闭状态下有效，
                        " 配合autoindent使用

set expandtab           " 以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4

if has('gui_running')
    set colorcolumn=80      " 在第80个字符处显示垂直界限
endif
" set textwidth=78        " 设置一行允许插入的最大字符数，0值表示禁用此功能
" set linebreak           " 整词换行

set cursorline          " 为光标所在行添加下划线
set number              " 显示行号
set autoread            " 文件在vim之外修改过，自动重新读入

set ignorecase          " 检索时忽略大小写
set hls                 " 检索时高亮显示匹配项
set incsearch           " 增量查找，会随着输入字符数而动态显示当前匹配字符

" set foldmethod=syntax  "代码折叠

filetype plugin indent on   " 打开文件类型检测

"}}


" 为标签页进行配置，通过ctrl h/l切换标签
" 使用：
"     在vim中用:tabnew filename 在新标签中打开名为filename的文件。
" conf for tabs {{
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
"}}


" conf for plugins {{{

" pathogen是vim用来管理插件的插件
" site: https://github.com/tpope/vim-pathogen
" pathogen {
execute pathogen#infect()
"}


" 设置配色为silarzed
" site: http://ethanschoonover.com/solarized/vim-colors-solarized
" conf for vim-color-silarzed {
syntax enable
if has('gui_running')
    set background=dark
    " set background=light
else
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    set background=dark
    " set background=light
endif
colorscheme solarized
let g:solarized_contrast  =   "high"
let g:solarized_visibility =  "high"
"}


" 状态栏的配置
" site: https://github.com/Lokaltog/vim-powerline
" conf for powerline {
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'
"}


" 用来显示目录树结构
" site: https://github.com/scrooloose/nerdtree
" conf for NERDTree {
map <C-f> :NERDTreeToggle<CR>
"}



" ctags的使用（一般系统默认装有ctags，可一直接使用）
" use of ctage {
" 在命令行下用ctags -R命令在当前目录下生成标签索引文件，默认为tags。
" 用vim编辑当前目录下文件是，若不指定tags文件位置，vim会在当前目录下寻找。找到后，可用一下快捷键进行跳转:
" ctrl-] ：跳转至光标所在对象定义之处
" ctrl-t ：返回跳转前位置
" [n]ctrl-t ：[n]为数字，向回跳转n次；等价于重复n次ctrl-t操作
"}

" taglist的配置
" site: https://github.com/vim-scripts/taglist.vim
" 使用：
"     当使用vim打开某个程序文件时，我们可以用:Tlist打开taglist窗口，如果该程序具备类、接口、属性等元素，就会在taglist窗口显示出来。
" conf for taglist {
let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
let Tlist_Auto_Update = 1              "自动更新Tlist
" let Tlist_Ctags_Cmd='D:\Program Files (x86)\Vim\vim74\ctags.exe'  "设置ctags命令的位置
nnoremap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
"}


" 书签配置
" site: http://www.vim.org/scripts/download_script.php?src_id=4700
" use of visualmark {
" 使用vim打开一个文件，使用快捷键mm设置书签（再次使用，取消书签），通过F2和shift+F2可以上下切换浏览。
"}


" emmet配置
" site: https://github.com/mattn/emmet-vim
" use of emmet {
" }


" markdown配置
" site: https://github.com/plasticboy/vim-markdown
" conf for markdown {{
let g:vim_markdown_folding_disabled=1
" use of markdown {
" - `]]`: go to next header. `<Plug>(Markdown_MoveToNextHeader)`
" - `[[`: go to previous header. Contrast with `]c`. `<Plug>(Markdown_MoveToPreviousHeader)`
" - `][`: go to next sibling header if any. `<Plug>(Markdown_MoveToNextSiblingHeader)`
" - `[]`: go to previous sibling header if any. `<Plug>(Markdown_MoveToPreviousSiblingHeader)`
" - `]c`: go to Current header. `<Plug>(Markdown_MoveToCurHeader)`
" - `]u`: go to parent header (Up). `<Plug>(Markdown_MoveToParentHeader)
" }
" }}


"}}}


