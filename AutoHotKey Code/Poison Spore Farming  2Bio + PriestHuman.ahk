#MaxThreadsPerHotkey 2
Planter = 7656 ; ahk_pid
Planterr = 14856 ; ahk_pid
Greeder = 16792 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop{
		Loop 40{
			ControlSend,,{F1}, ahk_pid %Planter%
			ControlSend,,{F1}, ahk_pid %Planterr%
			Sleep, 300
			ControlClick,, ahk_pid %Planter%
			ControlClick,, ahk_pid %Planterr%
			Sleep, 300
			}
		 ControlSend,,{F3}, ahk_pid %Greeder%
		 Sleep, 300
		}
	}
Return