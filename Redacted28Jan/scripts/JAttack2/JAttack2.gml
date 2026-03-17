function JAttack2(){
	
	var _attackTypeTemp = 0;
	image_speed = 1;
	
if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}
	
	//Direction
	moveDir = keyRight - keyLeft;
		
	if(image_index<1 && moveDir == -face)
	{
		//face = -face;
	}
	
	hsp = 2*face;
		
	if(image_index>0 && image_index<2)
	{
		vsp = -1;
	}

	
	/*if(image_index>0 && image_index<2) with this code, could lead into a third jump attack if wanted
	{
		vsp = -1
	}
	else
	{
		vsp = 0;
	}*/
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 2, 4, 0.1, 2, 12, 0.01, -0.33, sPlayerAttackJ2, sPlayerAttackJ2_HB);
	if(!audio_is_playing(LightAttack)) audio_play_sound(LightAttack, 1, false, 1, 0, random_range(0.9, 1));
	
	if (keyPressed_lightAttack && image_index > 2)
	{
		if(!onGround)
		{
		state = JAttack;
		if(audio_is_playing(LightAttack)) audio_stop_sound(LightAttack);
		}
		else
		{
		state = LAttack;
		if(audio_is_playing(LightAttack)) audio_stop_sound(LightAttack);
		}
	}
	
	if(vsp==0)
	{
		state = PlayerStateFree;
	}
	
	if (floor(image_index) == 5)
	{
		sprite_index = sPlayerFall;
		state = PlayerStateFree;
	}
	
}