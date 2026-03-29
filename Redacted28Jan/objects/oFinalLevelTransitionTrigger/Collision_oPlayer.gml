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
	if(global.graffitiCounter >= 19)
	{
		TransitionStart(FinalLevel4Cutscene1_Video, sqFadeOut, sqFadeIn);
	}
	else
	{
		TransitionStart(FinalLevel4Cutscene2_Video, sqFadeOut, sqFadeIn);
	}
}