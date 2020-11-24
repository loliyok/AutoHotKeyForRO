F2::
RO = 19200 ; ahk_pid

ControlSend,,{F2}, ahk_pid %RO%
Sleep, 350
ControlSend,,{Enter}, ahk_pid %RO%