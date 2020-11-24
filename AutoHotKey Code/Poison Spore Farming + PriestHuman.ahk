#MaxThreadsPerHotkey 2
Planter = 14856 ; ahk_pid
Greeder = 16792 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop{
		Loop 50{
			ControlSend,,{F1}, ahk_pid %Planter%
			Sleep, 300
			ControlClick,, ahk_pid %Planter%
			Sleep, 200
			}
		 ControlSend,,{F3}, ahk_pid %Greeder%
		}
	}
Return