/*
if(instance_place(x, y, oPlayer) && !graffitiDone)
{
	with (showInput)
	{
		appear = true;
	}
}
else
{
	with (showInput)
	{
		appear = false;
	}
}
*/
if(graffitiDone)
{
	//sprite_index = sGraffiti;
}

if(graffitiDone && !sprayGone)
{
	for(var i = 0; i<3; i++)
	{
		if(bongus[i].alpha = 1)
		{
			sprayGone = true;
			sprite_index = graffitiSprite;
			cutsceneShow = true;
		}
	}
}