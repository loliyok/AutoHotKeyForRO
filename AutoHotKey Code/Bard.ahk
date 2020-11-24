#MaxThreadsPerHotkey 2
Bard = 26260 ; ahk_pid
Dance = 32052 ; ahk_pid
Wiz = 6124 ; ahk_pid


^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop{
		; ControlSend,,{F3}, ahk_pid %Bard%
		ControlSend,,{F3}, ahk_pid %Dance%
		; ControlSend,,{F3}, ahk_pid %Wiz%
		Sleep, 200
		; ControlClick,, ahk_pid %Wiz%
		
	}
}