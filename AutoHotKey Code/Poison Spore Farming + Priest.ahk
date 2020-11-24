#MaxThreadsPerHotkey 2
Planter = 24952 ; ahk_pid
Greeder = 28804 ; ahk_pid
Priest = 12828 ; ahk_pid
Loopnum = 164; equal to mushroom/10

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop %Loopnum%{
		Loop 50{
			ControlSend,,{F1}, ahk_pid %Planter%
			Sleep, 300
			ControlClick,, ahk_pid %Planter%
			Sleep, 300
			}
		 ControlSend,,{F7}, ahk_pid %Priest%
		 Sleep, 300
		 ControlSend,,{F3}, ahk_pid %Greeder%
		 Sleep, 300
		}
	}
Return