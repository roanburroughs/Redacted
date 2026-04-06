function JAttack(){
	
	image_speed = 1;
	
	var _attackTypeTemp = 0;
	
if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}
	
//Direction
	moveDir = keyRight - keyLeft;
	
	hsp = 2*face;
	
	if(image_index>0 && image_index<3)
	{
	vsp = -1;
	}
	
	ProcessAttack(_attackTypeTemp, 2, 2, 3, 0.1, 2, 12, 0.01, -0.33, sPlayerAttackJ1, sPlayerAttackJ1_HB);
	if(!audio_is_playing(LightAttack)) audio_play_sound(LightAttack, 1, false, 1, 0, random_range(0.9, 1));
	
	if (keyPressed_lightAttack && image_index > 2)
	{
		if(!onGround)
		{
			state = JAttack2;
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