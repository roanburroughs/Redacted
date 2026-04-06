if(other.keyUp)
{
	with(other)
	{
		changeRoom = true;
		hsp = 0;
	}
	if(global.graffitiCounter >= 20)
	{
		if(os_windows)	TransitionStart(FinalLevel4Cutscene1_Video, sqFadeOut, sqFadeIn)
		else room_goto(target)
	}
	else
	{
		if(os_windows)	TransitionStart(FinalLevel4Cutscene2_Video, sqFadeOut, sqFadeIn)
		else room_goto(target)
	}
}