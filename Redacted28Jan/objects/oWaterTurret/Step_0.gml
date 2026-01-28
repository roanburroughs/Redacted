
if(instance_exists(oTextBoxController))
{
	//Stop alarms from counting down
	enemystorymodecommands()
	
exit;	
}
// Inherit the parent event
event_inherited();
if(!instance_exists(oPlayer))exit;
if(collision_circle(x,y,fireradius,oPlayer,false,true)	and !vulnerable		)
{
if(oPlayer.framecounter %30=0)
//% gives the remainder of the division
//meaning this if statement is checking if there is a remainder when the framecounter is divided by 30
//if framecounter is a multiple of 30, the remainer is 0 so this is run
//TLDR this statement only runs every 30 frames,running every frame would be too much 
{
	if(!audio_is_playing(Splash_2))audio_play_sound(Splash_2,3,false)
		with (instance_create_layer(xprevious + irandom_range(-20,20),y-50,"Spray",oWaterProjectile))
		{
			var offset = irandom_range(-10,10)
		direction= point_direction(other.x,other.y,oPlayer.x+offset,oPlayer.y+offset)
		vsp=-5
		//if(other.faceright) hsp=random_range(15,30)
		//else hsp=random_range(-15,-30)
		    speed = random_range(10, 20) //speed is influenced by direction unlike hsp
		}
}


}
var pdirection =  point_direction(x,y,oPlayer.x,oPlayer.y)
if( !vulnerable)
{
	if (pdirection > 90 and pdirection < 270)
	{
	    image_xscale = abs(image_xscale)
	}
	else
	{
	    image_xscale =-abs(image_xscale)
	}
}

if(vulnerable)
{
	sprite_index=water_turretPainted
}
else if(pdirection<120 and pdirection>60)
{
sprite_index=water_turret3	
}
else if((pdirection <150 and pdirection>30)   )
{
sprite_index=water_turret2
}
else {
sprite_index=water_turret	
}