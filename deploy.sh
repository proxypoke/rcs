#!/bin/bash
# This script is wtfpl'd. See wtfpl.txt

# prevent aliases over cp from fucking up the script.
cp=/bin/cp

declare -A paths
paths=(\
	["vimrc"]=$HOME/.vimrc \
	["vimfolder"]="$HOME"/.vim \
	["zshrc"]=$HOME/.zshrc \
	["zshfolder"]=$HOME/.zsh \
	["urxvt"]=$HOME/.Xdefaults \
	["i3"]=$HOME/.i3 \
	)

options=( 'vim' 'zsh' 'urxvt' 'i3' )

case $1 in
	all )
		echo "Deploying everything..."
		for i in ${options[@]}
		do
			$0 $i
		done
		;;
	vim )
		echo "Deploying .vimrc to ${paths["vimrc"]}..."
		cp .vimrc ${paths["vimrc"]}
		echo "Deploying .vim/ to ${paths["vimfolder"]}..."
		mkdir -p $HOME/.vim
		cp -r .vim/* ${paths["vimfolder"]}
		;;
	zsh )
		echo "Deploying .zshrc to ${paths["zshrc"]}..."
		cp .zshrc ${paths["zshrc"]}
		mkdir -p $HOME/.zsh
		cp -r .zsh/* ${paths["zshfolder"]}
		;;
	urxvt )
		echo "Deploying .Xdefaults to ${paths["urxvt"]}..."
		cp .Xdefaults ${paths["urxvt"]}
		;;
	i3 )
		echo "Deploying .i3/ to ${paths["i3"]}..."
		cp .i3 ${paths["i3"]}
		;;
	update )
		echo "Updating repository with local configs..."
		for i in ${!paths[@]}
		do
			echo "Grabbing ${paths[$i]}"
			if [ -e ${paths[$i]} ]
			then
				cp -r ${paths[$i]} .
			else
				echo "${paths[$i]} doesn't exist."
			fi
		done
		;;
	help|* )
		echo "Usage: deploy.sh PROGRAM|update|help"
		echo 

		echo "PROGRAMS"
		echo "========"

		echo "You can deploy configs for the following programs:"
		echo
		for i in ${options[@]}
		do
			echo $i
		done
		echo

		echo "update"
		echo "======"
		echo "Grabs your local config files and copies them"
		echo "into this repository."
		echo

		echo "help"
		echo "===="
		echo "Guess what you're looking at."
		;;
esac

