import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig
import XMonad.Layout.NoBorders

main = do
    xmonad $ defaultConfig
        { terminal    = "terminator"
        , layoutHook = smartBorders $ layoutHook defaultConfig
        , borderWidth = 1
        }
        `additionalKeysP`
        [ ("M-p", spawn "dmenu_run -nb black -nf green -sb green -sf black")
        , ("M-f", spawn "nightly")
        , ("M-s", spawn "sleep 0.2; scrot -se 'mv $f ~/screenshots'")
        ]
