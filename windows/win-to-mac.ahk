﻿; This script assumes that Alt and Ctrl characters have been swapped using a third-party tool
; full tutorial here -> https://github.com/stevenilsen123/mac-keyboard-behavior-in-windows/tree/main?tab=readme-ov-file

; -----KEY GUIDE-----
; # Win. (the key with the Windows logo) therefore `Send #e` would hold down Win and then press E.
; + Shift. For example, `Send, +abC` would send the text "AbC", and `Send, !+a` would press Alt+Shift+A.
; ^ Alt (because of remapkey). For example, `Send, This is text!a` would send the keys "This is text" and then press Alt+A. Note: !A produces a different effect in some programs than !a. This is because !A presses Alt+Shift+A and !a presses Alt+A. If in doubt, use lowercase.
; ! Ctrl (because of remapkey). For example, `Send, ^!a` would press Ctrl+Alt+A, and Send, ^{Home} would send Ctrl+Home. Note: ^A produces a different effect in some programs than ^a. This is because ^A presses Ctrl+Shift+A and ^a presses Ctrl+A. If in doubt, use lowercase.Sends Ctrl. For example, Send, ^!a would press Ctrl+Alt+A, and Send, ^{Home} would send Ctrl+Home. Note: ^A produces a different effect in some programs than ^a. This is because ^A presses Ctrl+Shift+A and ^a presses Ctrl+A. If in doubt, use lowercase.
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

; #Warn  ; Uncomment to enable warnings to assist with detecting common errors.
SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.

; Uncomment for key history
; #InstallKeybdHook
; KeyHistory

; App and tab switching
Ctrl & Tab::AltTab
!Tab::Send("^{Tab}")

; Quit the active app
^q::Send("!{f4}")

;;;; CUSTOMS ;;;;;

; Remap language change
!Space::
{
    Suspend(true)
    Send("#{Space}")
    Suspend(false)
    return
}

; remap for launcher
#Space::
{
    Suspend(true)
    Send("!{Space}")
    Suspend(false)
    return
}

; remap for desktop switch
!Left::
{
    Suspend(true)
    Send("#^{Left}")
    Suspend(false)
    return
}

!Right::
{
    Suspend(true)
    Send("#^{Right}")
    Suspend(false)
    return
}

; vscode 

SetTitleMatchMode(2)
#hotif WinActive("Visual Studio Code")
#Up::
{
    Suspend(true)
    Send("!{Up}")
    Suspend(false)
    return
}
#Down::
{
    Suspend(true)
    Send("!{Down}")
    Suspend(false)
    return
}
#+Up::
{
    Suspend(true)
    Send("!+{Up}")
    Suspend(false)
    return
}
#+Down::
{
    Suspend(true)
    Send("!+{Down}")
    Suspend(false)
    return
}

#hotif

; make dash in russian layout
#ь::
{
    Suspend(true)
    Send("-")
    Suspend(false)
    return
}

;;;; CUSTOMS ;;;;;

; Insertion point movement
^Left::
{
    Suspend(true)
    Send("{Home}")
    Suspend(false)
    return
}
^Right::
{
    Suspend(true)
    Send("{End}")
    Suspend(false)
    return
}
^Up::
{
    Suspend(true)
    Send("^{Home}")
    Suspend(false)
    return
}
^Down::
{
    Suspend(true)
    Send("^{End}")
    Suspend(false)
    return
}
+^Left::
{
    Suspend(true)
    Send("+{Home}")
    Suspend(false)
    return
}
+^Right::
{
    Suspend(true)
    Send("+{End}")
    Suspend(false)
    return
}
+^Up::
{
    Suspend(true)
    Send("+^{Home}")
    Suspend(false)
    return
}
+^Down::
{
    Suspend(true)
    Send("+^{End}")
    Suspend(false)
    return
}
#Left::
{
    Suspend(true)
    Send("^{Left}")
    Suspend(false)
    return
}
#Right::
{
    Suspend(true)
    Send("^{Right}")
    Suspend(false)
    return
}
+#Left::
{
    Suspend(true)
    Send("+^{Left}")
    Suspend(false)
    return
}
+#Right::
{
    Suspend(true)
    Send("+^{Right}")
    Suspend(false)
    return
}
