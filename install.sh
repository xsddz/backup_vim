#!/bin/bash
# Auther: ssir
# Source: https://github.com/ssir/backup_vim
# 


echo '安装中........'

back_path=`pwd`
vimf='vimrc_back'
vimd='vim_back'

# 备份
cd ~
if [ -f "$vimf" ]; then
    rm -f $vimf
fi
if [ -d "$vimd" ]; then
    rm -rf $vimd
fi
mv -f .vimrc $vimf
mv -f .vim $vimd


cd $back_path

# clone子项目
git submodule update --init --recursive

# 安装
cp -f setting/_vimrc ~/.vimrc
cp -rf setting/vim_linux ~/.vim

echo '[安装完成]'


