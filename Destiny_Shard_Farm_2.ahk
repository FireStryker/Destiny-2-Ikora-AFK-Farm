; Ikora Ray Exotic Legendary Shard Farm Autohotkey
; by FireStriker
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

F3::
{
	InputBox, armor_type, Destiny 2 Ikora Rey Farm by FireStriker, 1 for Arms`, 2 for Chest`, 3 for Legs
	if (armor_type = 1)
	{
		ikora_y := 650
		armor_y := 394
	}
	else if (armor_type = 2)
	{
		ikora_y := 650
		armor_y := 518
	}
	else if (armor_type = 3)
	{
		ikora_y := 750
		armor_y := 625
	}
	else
	{
		ExitApp
	}
    WinActivate, Destiny 2
    loop,
    {
		MouseMove, 1160, ikora_y
		Sleep, 200
        loop, 9
		{
            MouseClick, Left, 1160, ikora_y,, U
			Sleep, 1200
		}
        Send, i
		Sleep, 1500
		MouseMove, 1392, armor_y
		Sleep 100
		MouseMove, 1500, armor_y
		loop, 9 
		{
			Send, {f Down}
			Sleep, 4250
			Send, {f Up}
			Sleep, 750
		}
		Send, i
		Sleep, 1500
    }
}
Return
F4::Reload