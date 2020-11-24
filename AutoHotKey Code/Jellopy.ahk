#MaxThreadsPerHotkey 2
Pump = 34584 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop{
		ControlClick,, ahk_pid %Pump%
		Sleep, 200
		ControlClick,, ahk_pid %Pump%
		Sleep, 200
		ControlClick,, ahk_pid %Pump%
		Sleep, 400
		Loop 3{
			ControlSend,,{Enter}, ahk_pid %Pump%
			Sleep, 500		
			}
		ControlSend,,{Enter}, ahk_pid %Pump%
		Sleep, 500
		}
	}