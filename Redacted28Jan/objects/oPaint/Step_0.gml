getControls();

x += hsp;
y += vsp;


if(paintRight)
{
	hsp = 15;
	time_source_start(time_source);
	if(!drop)
	{
	vsp = 0;
	}
	else
	{
	vsp += grav;
	}
}

if (paintLeft)
{
	hsp = -15;
	time_source_start(time_source);
	if(!drop)
	{
	vsp = 0;
	}
	else
	{
	vsp += grav;
	}
}

if((paintUp) && (!paintRight) && (!paintLeft))
{
	hsp=0;
	time_source_start(time_source);
	if(!drop)
	{
	vsp = -12;
	}
	else
	{
	vsp += grav;
	}
}

if((paintRight) && (paintUp))
{
	hsp = 12;
	time_source_start(time_source);
	if(!drop)
	{
	vsp = -9;
	}
	else
	{
	vsp += grav;
	}
}

if((paintLeft) && (paintUp))
{
	hsp = -12;
	time_source_start(time_source);
	if(!drop)
	{
	vsp = -9;
	}
	else
	{
	vsp += grav;
	}
}

if((oPlayer.onGround == false) && (paintDown) && (!paintLeft) && (!paintRight))
{
	hsp = 0;
	time_source_start(time_source);
	if(!drop)
	{
	vsp = -7;
	}
	else
	{
	vsp += grav;
	}
	
}