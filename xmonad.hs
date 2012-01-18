import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
	xmobar <- spawnPipe "/usr/bin/xmobar $HOME/.xmobarrc"
	xmonad $ defaultConfig
		{ terminal	= "terminator"
		, layoutHook = smartBorders $ avoidStruts $ layoutHook defaultConfig
		, logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmobar
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
		, borderWidth = 1
		}
		`additionalKeysP`
		[ ("M-p", spawn "dmenu_run -nb black -nf green -sb green -sf black")
		, ("M-f", spawn "nightly")
		, ("M-s", spawn "sleep 0.2; scrot -e 'mv $f ~/screenshots'")
		]
