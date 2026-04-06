/*with(other)
{
	changeRoom = true;
	hsp = 0;
}

var target = LevelTest4;
if (room == LevelTest4) target = LevelTest2;
TransitionStart(target, sqFadeOut, sqFadeIn);*/

if(other.keyUp)
{
	with(other)
	{
		changeRoom = true;
		hsp = 0;
	}
	if(os_windows)	TransitionStart(target, sqFadeOut, sqFadeIn)
	else room_goto(target)
}