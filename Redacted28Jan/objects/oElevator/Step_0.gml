if(moveStart)
{
	
	vsp = moveSpeed/timeToMove
	if(y >= finalY)
	{
		moveStart = false;
		vsp = 0;
		time_source_start(timerEnd);
	}
}

if(moveEnd)
{
	vsp = -(moveSpeed/timeToMove)
	/*if(y <= finalY-(finalYPos*2))
	{
		moveEnd = false;
		vsp = 0;
	}*/
	
	if(y <= ystart)
	{
		moveEnd = false;
		vsp = 0;
		time_source_start(timerStart);
	}
}

x += hsp;
y += vsp;