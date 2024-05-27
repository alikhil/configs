#Requires AutoHotkey v2.0

!BS::Send("{Shift down}{Ctrl down}{Left}{Shift up}{Ctrl up}{Backspace}")
^BS::Send("{Shift down}{Home}{Shift up}{Backspace}")


LCtrl::LWin
LWin::LCtrl


; Ctrl + Left Arrow: Move to the beginning of the line
^Left::Send("{Home}")

; Ctrl + Right Arrow: Move to the end of the line
^Right::Send("{End}")

; Alt + Left Arrow: Move oneo word to the left without triggering the Ctrl+Left remap
!Left::Send("{Ctrl Down}{Left}{Ctrl Up}")

; Alt + Right Arrow: Move one word to the right without triggering the Ctrl+Right remap
!Right::Send("{Ctrl Down}{Right}{Ctrl Up}")

; Ctrl + Shift + Left Arrow: Select to the beginning of the line
^+Left::Send("{Shift Down}{Home}{Shift Up}")

; Ctrl + Shift + Right Arrow: Select to the end of the line
^+Right::Send("{Shift Down}{End}{Shift Up}")

; Alt + Shift + Left Arrow: Select one word to the left without triggering the Ctrl+Left remap
!+Left::Send("{Ctrl Down}{Shift Down}{Left}{Shift Up}{Ctrl Up}")

; Alt + Shift + Right Arrow: Select one word to the right without triggering the Ctrl+Right remap
!+Right::Send("{Ctrl Down}{Shift Down}{Right}{Shift Up}{Ctrl Up}")