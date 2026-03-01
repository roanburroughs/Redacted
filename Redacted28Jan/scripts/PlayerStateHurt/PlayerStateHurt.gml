function PlayerStateHurt(){
	//sprite_index = idleSpr;
	
	image_speed = 1.0;
	grv = 0.475;
	weight += 0.1;
	if(weight <= 1)
	{
		hsp = lerp(hspKnock, 0, hspAirtime);
		vspAirtime += 0.1;
		vsp = lerp(vspKnock, 0, vspAirtime);
	}
	
	if(!hurt)
	{
	alarm[2]=iframes*2
	//hp-=10
		if(!audio_is_playing(Being_Hit_2)) audio_play_sound(Being_Hit_2,1,false,0.5) 
	hurt=true
	}	
	
	//if (hsp != 0) image_xscale = sign(hsp);
	
	if(weight > 2)
	{
		canDash=false
		alarm[0]=dashcooldown
		state = PlayerStateFree;
		weight = 0;
	}
	
}