
if(instance_exists(oTextBoxController))
{
	enemystorymodecommands()
	
	
exit;	
}
// Inherit the parent event
event_inherited();

/*
if((hsp > 0) && (vsp > 1))
{
	image_index = 2;
}

if((hsp > 0) && ((vsp < 1) && (vsp > 0)))
{
	image_index = 1;
}

if((hsp > 0.25) && (vsp < 0))
{
	image_index = 8;
}


if((hsp < 0) && ((vsp > 0) && (vsp<0.25)))
{
	image_index = 4;
}

if((hsp < 0) && ((vsp < 1) && (vsp > 0.25)))
{
	image_index = 5;
}

if((hsp < 0) && (vsp < 0))
{
	image_index = 6;
}

/*if(((hsp > -0.25) && (hsp < 0.25)) && (vsp < 0))
{
	image_index = 7;
}*/


if (vsp < 0)
{
	onGround = false;
}