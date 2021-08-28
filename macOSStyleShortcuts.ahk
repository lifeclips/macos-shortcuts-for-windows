; # = Win
; ! = Alt
; ^ = Ctrl
; + = Shift
; & = Combine two keys into a shortcut

; setting Capslock key works like macOS
; long press to switch caps lock, short press to switch input language
SetStoreCapslockMode, off
CapsLock::
If StartTime
    return
StartTime := A_TickCount
return

CapsLock up::
TimeLength := A_TickCount - StartTime
if (TimeLength >= 1 and TimeLength < 200)
{
    Send, ^{Space}
}
else if (TimeLength >= 200)
{
    Send, {CapsLock}
}
StartTime := ""
return

; open link in new window
$!LButton::
SendInput {Ctrl Down}{LButton}{Ctrl Up} 
Return

; select all
$!a:: 
SendInput {Ctrl Down}{a}{Ctrl Up} 
Return

; bold
$!b::
SendInput {Ctrl Down}{b}{Ctrl Up}
Return

; copy
$!c::
SendInput {Ctrl Down}{c}{Ctrl Up}
Return

; open chrome inspect tool
$!+c:: 
SendInput {Ctrl Down}{Shift Down}{c}{Shift Up}{Ctrl Up} 
Return

; find
$!f::
SendInput {Ctrl Down}{f}{Ctrl Up}
Return

; new window
$!n:: 
SendInput {Ctrl Down}{n}{Ctrl Up} 
Return

; quit app
$!q:: 
SendInput {Alt Down}{F4}{Alt Up} 
Return

; refresh
$!r:: 
SendInput {Ctrl Down}{r}{Ctrl Up} 
Return

; force refresh
$!+r:: 
SendInput {Ctrl Down}{Shift Down}{r}{Shift Up}{Ctrl Up} 
Return

; save
$!s:: 
SendInput {Ctrl Down}{s}{Ctrl Up} 
Return

; new tab
$!t::
SendInput {Ctrl Down}{t}{Ctrl Up} 
Return

; open last closed tab
$!+t:: 
SendInput {Ctrl Down}{Shift Down}{t}{Shift Up}{Ctrl Up} 
Return

; paste
$!v::
SendInput {Ctrl Down}{v}{Ctrl Up}
Return

; close window
$!w:: 
SendInput {Ctrl Down}{w}{Ctrl Up} 
Return

; cut
$!x::
SendInput {Ctrl Down}{x}{Ctrl Up}
Return

; undo
$!z:: 
SendInput {Ctrl Down}{z}{Ctrl Up} 
Return

; reset zoom level
$!0:: 
SendInput {Ctrl Down}{0}{Ctrl Up} 
Return

; zoom smaller
$!-:: 
SendInput {Ctrl Down}{-}{Ctrl Up} 
Return

; zoom larger
$!=:: 
SendInput {Ctrl Down}{=}{Ctrl Up} 
Return

; custom key to lock computer
$sc072::
run rundll32.exe user32.dll`,LockWorkStation 
Return
