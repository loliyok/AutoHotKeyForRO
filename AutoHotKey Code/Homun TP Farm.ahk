#MaxThreadsPerHotkey 2
Homun = 9012 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop{
		Sleep, 1000
		ControlSend,,{F5}, ahk_pid %Homun%
		Sleep, 500
		ControlSend,,{F5}, ahk_pid %Homun%
		Sleep, 500
		ControlSend,,{Enter}, ahk_pid %Homun%
		Sleep, 5000
		; ControlSend,,{F9}, ahk_pid %Homun%
		; ControlClick,, ahk_pid %Homun%
		Sleep, 35000
		}
	}