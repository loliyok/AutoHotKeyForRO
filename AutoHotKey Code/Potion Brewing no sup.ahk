#MaxThreadsPerHotkey 2
Brewer = 8464 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop{
				ControlSend,,{F2}, ahk_pid %Brewer%
				Sleep, 400
				ControlSend,,{Enter}, ahk_pid %Brewer%
				Sleep, 300
				ControlSend,,{Enter}, ahk_pid %Brewer%
				Sleep, 300

	}
}