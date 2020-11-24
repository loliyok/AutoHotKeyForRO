#MaxThreadsPerHotkey 2
Brewer = 7656 ; ahk_pid
Priest = 16792 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop {
		 ControlSend,,{F9}, ahk_pid %Priest%
		 Sleep, 200
		 ControlSend,,{F9}, ahk_pid %Priest%
		 Sleep, 200
		 ControlSend,,{F9}, ahk_pid %Priest%
		 Sleep, 200
			Loop 5{
			ControlSend,,{F2}, ahk_pid %Brewer%
			Sleep, 400
			ControlSend,,{Enter}, ahk_pid %Brewer%
			Sleep, 200
			ControlSend,,{Enter}, ahk_pid %Brewer%
			Sleep, 200
			}
		 ControlSend,,{F7}, ahk_pid %Priest%
		 Sleep, 200
		 ControlSend,,{F7}, ahk_pid %Priest%
		 Sleep, 200
			Loop 15{
			ControlSend,,{F2}, ahk_pid %Brewer%
			Sleep, 400
			ControlSend,,{Enter}, ahk_pid %Brewer%
			Sleep, 200
			ControlSend,,{Enter}, ahk_pid %Brewer%
			Sleep, 200
			}
	}
}