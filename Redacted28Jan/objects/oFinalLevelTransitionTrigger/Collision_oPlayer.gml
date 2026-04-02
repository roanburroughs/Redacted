if(other.keyUp)
{
	with(other)
	{
		changeRoom = true;
		hsp = 0;
	}
	if(global.graffitiCounter >= 20)
	{
		TransitionStart(FinalLevel4Cutscene1_Video, sqFadeOut, sqFadeIn);
	}
	else
	{
		TransitionStart(FinalLevel4Cutscene2_Video, sqFadeOut, sqFadeIn);
	}
}