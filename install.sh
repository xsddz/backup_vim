#!/bin/bash


echo -n '安装中........'

back_path=`pwd`
vimf='vimrc_back'
vimd='vim_back'

# 备份
cd ~
if [ -f "$vimf" ]; then
    rm -f $vimf
fi
if [ -f "$vimd" ]; then
    rm -rf $vimd
fi
mv -f .vimrc $vimf
mv -f .vim $vimd

# 安装
cd $back_path
cp -f vimrc ~/.vimrc
cp -rf vim ~/.vim

echo '[ok]'


