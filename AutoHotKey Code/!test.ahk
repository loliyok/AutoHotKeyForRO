#MaxThreadsPerHotkey 2
Pump = 16764 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop {
		ControlClick,, ahk_pid %Pump%
		Sleep, 200
		ControlClick,, ahk_pid %Pump%
		Sleep, 200
		ControlClick,, ahk_pid %Pump%
		Sleep, 400
		Loop 6{
			ControlSend,,{Enter}, ahk_pid %Pump%
			Sleep, 500		
			}
		ControlSend,,{5}, ahk_pid %Pump%
		Sleep, 200
		ControlSend,,{0}, ahk_pid %Pump%
		Sleep, 400
		Loop 2{
			ControlSend,,{Enter}, ahk_pid %Pump%
			Sleep, 500		
			}
		}
	}