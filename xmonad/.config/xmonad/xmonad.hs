import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Layout.Spacing

lh = spacingWithEdge 3 $ layoutHook def

terminalp = "konsole"
browser = "firefox"

myKeys =
       [ ("M-e", spawn terminalp)
       , ("M-w", spawn browser)
       , ("M-r", spawn "xmonad --recompile" >> spawn "xmonad --restart")
       , ("M-q", kill)
       , ("<XF86AudioRaiseVolume>", spawn "amixer -q set Master 5%+")
       , ("<XF86AudioLowerVolume>", spawn "amixer -q set Master 5%-")
       ]

main = xmonad $ def
     { modMask = mod4Mask
     , terminal = "konsole"
     , borderWidth = 2
     , normalBorderColor = "#444b6a"
     , focusedBorderColor = "#ad8ee6"
     , layoutHook = lh
     }
     `additionalKeysP` myKeys