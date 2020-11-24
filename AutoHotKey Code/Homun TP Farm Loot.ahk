#MaxThreadsPerHotkey 2
Homun = 1884 ; ahk_pid

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop { 
		PixelSearch, Px, Py, 235, 128, 831, 585, 0x0505ff, 5, Fast 
		if ErrorLevel {
			ControlSend,,{F5}, ahk_pid %Homun%
			Sleep, 500
			ControlSend,,{F5}, ahk_pid %Homun%
			Sleep, 500
			ControlSend,,{Enter}, ahk_pid %Homun%
			Sleep, 6000
		}
		else {
			MouseClick, left, %Px%, %Py%, 2
			Sleep, 200
			MouseClick, left, %Px%, %Py%, 2
			Sleep, 6000
		}
	}
}