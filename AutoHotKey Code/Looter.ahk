#MaxThreadsPerHotkey 2
Looter = 61144 ; ahk_pid of the RO screen
X1 = 0 ; top left pixel
Y1 = 0 ; top left pixel
X2 = 100 ; bot right pixel
Y2 = 100 ; bot right pixel
item = 0x ; color of the item

^b::
Toggle := !Toggle
If(!Toggle){
	Reload
	}
Else{
	Loop{
	

		}
	}