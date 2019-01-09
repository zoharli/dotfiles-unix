#!/bin/bash

rm .DS_Store


cp -rf .[^.]* $HOME


#pip

if [[ ! -n "$1" ]] || [[ $1 != "update" ]]
then
	mkdir $HOME/.ssh
	cat .id_rsa.pub >> $HOME/.ssh/authorized_keys
	chmod 700 $HOME/.ssh
	chmod 600 $HOME/.ssh/authorized_keys
	mkdir $HOME/.trash
	mkdir $HOME/.pip
	echo "[global]\nindex-url = https://mirrors.ustc.edu.cn/pypi/web/simple\nformat = columns\n">$HOME/.pip/pip.conf
	sudo apt-get install zsh
	sudo apt-get install silverseacher-ag
	sudo apt-get install ctags
	sudo apt-get install samba
	chsh -s /usr/bin/zsh 
fi

rm $HOME/.id_rsa.pub
rm -rf $HOME/.git
git config --global core.excludesfile ~/.gitignore_global
git config --global user.email "zhanghengli@pku.edu.cn"
git config --global user.name "zoharli"

