import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

browser = "ffbeta"
dmenu = "dmenu_run -nb black -nf green -sb green -sf black" 
screenshot = "sleep 0.2; scrot -e 'mv $f ~/screenshots'"
screensaver = "xscreensaver-command --lock"

myManageHook = composeAll
	[ className =? "Smplayer2"						--> doShift "4"
	, className =? "MPlayer"						--> doShift "4"
	, className =? "Xchat"							--> doShift "6"
	, className =? "Thunderbird-bin"				--> doShift "7"
	, className =? "Thunderbird"					--> doShift "7"
	, className =? "Pidgin"							--> doShift "7"	
	, className =? "Deluge"							--> doShift "8"
	, stringProperty "WM_WINDOW_ROLE" =? "browser"	--> doShift "1"
	, manageDocks
	]


main = do
	xmobar <- spawnPipe "/usr/bin/xmobar $HOME/.xmobarrc"
	xmonad $ defaultConfig
		{ terminal	= "urxvt"
		, layoutHook = smartBorders $ avoidStruts $ layoutHook defaultConfig
		, manageHook = myManageHook
		, logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmobar
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
		, borderWidth = 1
		}
		`additionalKeysP`
		[ ("M-p", spawn dmenu)
		, ("M-f", spawn browser)
		, ("M-s", spawn screenshot)
		, ("M-x", spawn screensaver)
		]
