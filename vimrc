syn on                  " 语法支持

"common conf {{

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
set shiftwidth=8
set tabstop=8

" set textwidth=78        " 设置一行允许插入的最大字符数，0值表示禁用此功能
" set linebreak           " 整词换行

set cursorline          " 为光标所在行添加下划线
set number              " 显示行号
set autoread            " 文件在vim之外修改过，自动重新读入

set fileencodings=utf-8,gbk   " 使用utf-8或gbk打开文件

set ignorecase          " 检索时忽略大小写
set hls                 " 检索时高亮显示匹配项
set incsearch           " 增量查找，会随着输入字符数而动态显示当前匹配字符
set helplang=cn         " 帮助系统设置为中文
" set foldmethod=syntax  "代码折叠

"}}


" 为标签页进行配置，通过ctrl h/l切换标签
" 使用：
"     在vim中用:tabnew filename 在新标签中打开名为filename的文件。
" conf for tabs {
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
"}


" conf for plugins {{

" pathogen是vim用来管理插件的插件
" site: https://github.com/tpope/vim-pathogen
" pathogen {
call pathogen#infect()
"}


" 设置配色为silarzed
" site: http://ethanschoonover.com/solarized/vim-colors-solarized
" conf for vim-color-silarzed {
syntax enable
" set background=dark
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized
let g:solarized_termcolors=256   " 当出现颜色偏差是，打开该选项
let g:solarized_termtrans = 1    " 若已将终端背景设为透明，想继续保持透明效果，打开该选项
"}


" 状态栏的配置
" site: https://github.com/Lokaltog/vim-powerline
" conf for powerline {
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
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
" site: https://github.com/vim-scripts/taglist.vim.git
" 使用：
"     当使用vim打开某个程序文件时，我们可以用:Tlist打开taglist窗口，如果该程序具备类、接口、属性等元素，就会在taglist窗口显示出来。
" conf for taglist {
let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
let Tlist_Ctags_Cmd='/usr/bin/ctags'  "设置ctags命令的位置
nnoremap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
"}


" 快速文件浏览的插件配置(该插件需支持ruby扩展）
" site: https://wincent.com/products/command-t
" conf for command-t {
"1.安装
" 从下载地址下载最新版本的vba文件，目前最新版本是1.4，所以安装文件是command-t-1.4.vba
" 在~/.vim/bundle目录下创建文件夹command-t
" 用Vim打开command-t-1.4.vba
" 执行:UseVimball ~/.vim/bundle/command-t
" 
" 进入ruby目录下编译C扩展
" 
"    cd ~/.vim/bundle/command-t/ruby/command-t
"    ruby extconf.rb
"    make
"2.使用
" 输入:CommandT可进入文件快速定位功能，以下是快捷键
" 
"     ctrl+j/k 上下选择文件，选中后回车打开文件
"     ctrl+t 以tab方式打开文件
"     ctrl+s/v 可以水平或垂直分割窗口打开文件
"     ctrl+c 退出该模式
" 
" 该插件还有个常用命令，:CommandTBuffer，可以浏览缓冲区的文件，并重新打开。操作方式同上。
"}


" 书签配置
" site: http://www.vim.org/scripts/download_script.php?src_id=4700
" use of visualmark {
" 使用vim打开一个文件，使用快捷键mm设置书签（再次使用，取消书签），通过F2和shift+F2可以上下切换浏览。
"}

"}}

