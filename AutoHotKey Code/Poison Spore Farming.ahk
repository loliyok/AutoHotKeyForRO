#MaxThreadsPerHotkey 2
Planter = 21568 ; ahk_pid
Greeder = 17388 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop{
		Loop 50{
			ControlSend,,{F1}, ahk_pid %Planter%
			Sleep, 500
			ControlClick,, ahk_pid %Planter%
			Sleep, 500
			}
		 ControlSend,,{F3}, ahk_pid %Greeder%
		 Sleep, 5000
		 ControlSend,,{F3}, ahk_pid %Greeder%
		 Sleep, 15000
		}
	}
Return