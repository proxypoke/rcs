#!/bin/bash
# This script is wtfpl'd. See wtfpl.txt

# prevent aliases over cp from fucking up the script.
cp=/bin/cp

declare -A paths
paths=(\
	["vimrc"]=$HOME/.vimrc \
	["vimfolder"]="$HOME"/.vim \
	["xmobar"]=$HOME/.xmobarrc \
	["xmonad"]=$HOME/.xmonad/xmonad.hs \
	["zsh"]=$HOME/.zshrc \
	["urxvt"]=$HOME/.Xdefaults \
	)

options=( 'vim' 'xmobar' 'xmonad' 'zsh' 'urxvt' )

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
		cp -i .vimrc ${paths["vimrc"]}
		echo "Deploying .vim to ${paths["vimfolder"]}..."
		cp -ir .vim/* ${paths["vimfolder"]}
		;;
	xmobar )
		echo "Deploying .xmobarrc to ${paths["xmobar"]}..."
		cp -i .xmobarrc ${paths["xmobar"]}
		;;
	xmonad )
		echo "Deploying xmonad.hs to ${paths["xmonad"]}..."
		cp -i xmonad.hs ${paths["xmonad"]}
		;;
	zsh )
		echo "Deploying .zshrc to ${paths["zsh"]}..."
		cp -i .zshrc ${paths["zsh"]}
		;;
	urxvt )
		echo "Deploying .Xdefaults to ${paths["urxvt"]}..."
		cp -i .Xdefaults ${paths["urxvt"]}
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

