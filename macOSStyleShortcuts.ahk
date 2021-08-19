; # = Win
; ! = Alt
; ^ = Ctrl
; + = Shift
; & = Combine two keys into a shortcut

; set Capslock key: long press to switch caps lock, short press to switch input language
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

; open links in new window
$!LButton::
SendInput {Ctrl Down}{LButton}{Ctrl Up} 
Return

$!z:: 
SendInput {Ctrl Down}{z}{Ctrl Up} 
Return

$!x::
SendInput {Ctrl Down}{x}{Ctrl Up}
Return

$!c::
SendInput {Ctrl Down}{c}{Ctrl Up}
Return

$!+c:: 
SendInput {Ctrl Down}{Shift Down}{c}{Shift Up}{Ctrl Up} 
Return

$!v::
SendInput {Ctrl Down}{v}{Ctrl Up}
Return

$!b::
SendInput {Ctrl Down}{b}{Ctrl Up}
Return 

$!a:: 
SendInput {Ctrl Down}{a}{Ctrl Up} 
Return 

$!s:: 
SendInput {Ctrl Down}{s}{Ctrl Up} 
Return

$!f::
SendInput {Ctrl Down}{f}{Ctrl Up}
Return

$!q:: 
SendInput {Alt Down}{F4}{Alt Up} 
Return 

$!w:: 
SendInput {Ctrl Down}{w}{Ctrl Up} 
Return 

$!r:: 
SendInput {Ctrl Down}{r}{Ctrl Up} 
Return 

$!t::
SendInput {Ctrl Down}{t}{Ctrl Up} 
Return

$!+t:: 
SendInput {Ctrl Down}{Shift Down}{t}{Shift Up}{Ctrl Up} 
Return

$!0:: 
SendInput {Ctrl Down}{0}{Ctrl Up} 
Return

$!-:: 
SendInput {Ctrl Down}{-}{Ctrl Up} 
Return

$!=:: 
SendInput {Ctrl Down}{=}{Ctrl Up} 
Return

; custom key to lock computer
$sc072::
run rundll32.exe user32.dll`,LockWorkStation 
Return
