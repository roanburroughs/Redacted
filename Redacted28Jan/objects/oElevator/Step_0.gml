
if(!standActivate)
{
	if(moveStart)
	{
	
		vsp = (moveSpeed/timeToMove)*sign(finalYPos);
		if(sign(finalYPos) == 1)
		{
			if(y >= finalY)
			{
				moveStart = false;
				standActivate = false;
				vsp = 0;
				time_source_start(timerEnd);
			}
		}
	
		if(sign(finalYPos) == -1)
		{
			if(y <= finalY)
			{
				moveStart = false;
				vsp = 0;
				time_source_start(timerEnd);
			}
		}
	}

	if(moveEnd)
	{
		vsp = -((moveSpeed/timeToMove)*sign(finalYPos));
		/*if(y <= finalY-(finalYPos*2))
		{
			moveEnd = false;
			vsp = 0;
		}*/
	
		if(sign(finalYPos) == 1)
		{
			if(y <= ystart)
			{
				moveEnd = false;
				vsp = 0;
				time_source_start(timerStart);
			}
		}
	
		if(sign(finalYPos) == -1)
		{
			if(y >= ystart)
			{
				moveEnd = false;
				vsp = 0;
				time_source_start(timerStart);
			}
		}
	}
}

x += hsp;
y += vsp;