Slave = 19200 ; ahk_pid

; heal
h::
Loop 1{
Sleep, 200
ControlSend,,{F2}, ahk_pid %RO%
Sleep, 200
ControlSend,,{F2}, ahk_pid %RO%
}

; ab auto
j::
Loop 1{
Sleep, 200
ControlSend,,{F3}, ahk_pid %RO%
Sleep, 200
ControlSend,,{F3}, ahk_pid %RO%
Sleep, 4000
ControlSend,,{F4}, ahk_pid %RO%
Sleep, 200
ControlSend,,{F4}, ahk_pid %RO%
}

; kyle
k::
Loop 1{
Sleep, 200
ControlSend,,{F5}, ahk_pid %RO%
Sleep, 200
ControlSend,,{F5}, ahk_pid %RO%
}

; magnificant
g::
Loop 1{
Sleep, 200
ControlSend,,{F1}, ahk_pid %RO%
Sleep, 200
ControlSend,,{F1}, ahk_pid %RO%
}