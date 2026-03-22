if(instance_place(x, y, oPlayer) && !graffitiDone && graffitiReady)
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

if(graffitiReady)
{
	alpha = min(alpha+0.04, 1);
}

if(graffitiDone && !sprayGone)
{
	for(var i = 0; i<3; i++)
	{
		if(bongus[i].alpha = 1)
		{
			sprayGone = true;
			sprite_index = sGraffiti;
		}
	}
}