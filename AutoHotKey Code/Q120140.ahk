#MaxThreadsPerHotkey 2
Ragnarok = 6368 ; ahk_pid

GetQ()
{
    ControlSend,,{Enter}, ahk_pid %Planter% ; Select Q
	ControlSend,,{Enter}, ahk_pid %Planter% ; Next
	ControlSend,,{Enter}, ahk_pid %Planter% ; Accept	
	ControlSend,,{Enter}, ahk_pid %Planter% ; Next
}

QOdin()
{
    ControlSend,,{Enter}, ahk_pid %Planter% ; Select Odin	
	GetQ() ; Odin 1
	
}