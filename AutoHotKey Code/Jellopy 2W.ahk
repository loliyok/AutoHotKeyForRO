#MaxThreadsPerHotkey 2
Pump1 = 8296 ; ahk_pid
Pump2 = 8144 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop{
		ControlClick,, ahk_pid %Pump1%
		ControlClick,, ahk_pid %Pump2%
		Sleep, 200
		ControlClick,, ahk_pid %Pump1%
		ControlClick,, ahk_pid %Pump2%
		Sleep, 200
		ControlClick,, ahk_pid %Pump1%
		ControlClick,, ahk_pid %Pump2%
		Sleep, 400
		Loop 3{
			ControlSend,,{Enter}, ahk_pid %Pump1%
			ControlSend,,{Enter}, ahk_pid %Pump2%
			Sleep, 500		
			}
		ControlSend,,{Enter}, ahk_pid %Pump1%
		ControlSend,,{Enter}, ahk_pid %Pump2%
		Sleep, 500
		}
	}