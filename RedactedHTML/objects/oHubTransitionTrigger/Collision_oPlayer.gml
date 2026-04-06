/*
var target = LevelTest4;
if (room == LevelTest4) target = LevelTest2;*/

if(ready && other.keyUp)
{
	with(other)
	{
		changeRoom = true;
		hsp = 0;
	}
if(os_windows)	HubTransitionStart(target, sqFadeOut, sqFadeIn)
else room_goto(target)
}