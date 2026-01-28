function PlayerStateDash(){
if(framecounter %3=0)
//% gives the remainder of the division
//meaning this if statement is checking if there is a remainder when the framecounter is divided by 3
//if framecounter is a multiple of 3, the remainer is 0 so this is run
//TLDR this statement only runs every 3 frames,running every frame would be too much 
{
		with (instance_create_layer(xprevious + irandom_range(-20,20),y,"Spray",oPaintProjectile))
		{
		vsp=10
		hsp=irandom_range(1*other.face,15*other.face)
		image_xscale=0.75
		image_yscale=0.75
		}
}
	//X Movement
	hsp = face * dashSp;
	vsp = -0.01;
	//Get face
	if moveDir != 0
	{
		face = moveDir;
	}
	
	//Dash sprite
	sprite_index = dashSpr;
	
	//Ending
	dashEnergy -= dashSp;
	if (dashEnergy <= 0)
	{
		vsp = 0;
		hsp = 0;
		canDash=false
		alarm[0]=dashcooldown
		state = PlayerStateFree;
	}
}