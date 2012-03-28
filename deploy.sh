#!/bin/bash
# This script is wtfpl'd. See wtfpl.txt

# prevent aliases over cp from fucking up the script.
cp=/bin/cp

vimrc_path=$HOME/.vimrc
vimfolder_path=$HOME
xmobarrc_path=$HOME/.xmobarrc
xmonad_path=$HOME/.xmonad/xmonad.hs
zshrc_path=$HOME/.zshrc
urxvt_path=$HOME/.Xdefaults

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
		echo "Deploying .vimrc to ${vimrc_path}..."
		cp -i .vimrc ${vimrc_path}
		echo "Deploying .vim to ${vimfolder_path}..."
		cp -ir .vim ${vimfolder_path}
		;;
	xmobar )
		echo "Deploying .xmobarrc to ${xmobarrc_path}..."
		cp -i .vimrc ${xmobarrc_path}
		;;
	xmonad )
		echo "Deploying xmonad.hs to ${xmonad_path}..."
		cp -i xmonad.hs ${xmonad_path}
		;;
	zsh )
		echo "Deploying .zshrc to ${zshrc_path}..."
		cp -i .zshrc ${zshrc_path}
		;;
	urxvt )
		echo "Deploying .Xdefaults to ${urxvt_path}..."
		cp -i .Xdefaults ${urxvt_path}
		;;
	help|* )
		echo "You can deploy configs for the following programs:"
		echo
		for i in ${options[@]}
		do
			echo $i
		done

		;;
esac
