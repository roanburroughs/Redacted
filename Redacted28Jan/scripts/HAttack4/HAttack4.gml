function HAttack4(){
	moveDir = keyRight - keyLeft;
	var _attackTypeTemp0 = 1;
	var _attackTypeTemp1 = 2;
	
// REPLACE "	image_xscale = face; "
	//WITH THIS://
if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}
	
	////////////////////////////////////////
	
	
	
	if(image_index<1 && moveDir == -face)
	{
		face = -face;
	}
	
	if(image_index<3)
    {
		//hsp = 2*face;
    }
	if(image_index>4 && image_index<13)
	{
		if(!audio_is_playing(LightAttack)) audio_play_sound(LightAttack, 1, false, 1, 0, random_range(0.9, 1));
		//hsp = (6*image_speed)*face;
		hsp = 8*face;
	}

	else
	{
		hsp=0;
	}
	
	if(floor(image_index) == 13)
	{
		ds_list_clear(hitByAttack);
	}
	
	if(floor(image_index) > 13 && floor(image_index) < 17)
	{
		if(!audio_is_playing(HeavyAttack)) audio_play_sound(HeavyAttack, 0, false, 1, 0, 0.7);
	}
	
	//attack type, damage, stun damage, hitstun, knockbackspeed, hspknock, vspknock, hspairtime, vspairtime, juggletime, sprite, mask
	ProcessMultiAttack(_attackTypeTemp0, 1, 2, 30, 0.1, 8, 6, 0.01, -0.1, 1, sPlayerAttackH4, sPlayerAttackH4_HB2);
	//attack type, damage, stun damage, hitstun, knockbackspeed, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp1, 4, 5, 120, 0.1, 16, 24, 0.2, -0.2, sPlayerAttackH4, sPlayerAttackH4_HB);
	

	if (image_index >= 16.8)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}