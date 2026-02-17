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
	
	//if (hsp != 0) image_xscale = sign(hsp);
	
	if(weight > 2)
	{
		state = PlayerStateFree;
		weight = 0;
	}
	
}