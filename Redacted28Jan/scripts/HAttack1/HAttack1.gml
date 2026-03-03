function HAttack1(){
	moveDir = keyRight - keyLeft;
	
	var _attackTypeTemp = 0;
	
if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}
	
	if(image_index<1 && moveDir == -face)
	{
		face = -face;
	}
	
	if(image_index<3)
	{
	hsp = (4*image_speed)*face;
	}
	else
	{
		hsp = 0;
	}

	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 3, 3, 3, 0.5, 8, 9, 0, 0, sPlayerAttackH1, sPlayerAttackH1_HB);
	if(!audio_is_playing(HeavyAttack)) audio_play_sound(HeavyAttack, 1, false, 1, 0, random_range(0.9, 1));
	
	if(keyPressed_lightAttack && image_index > 3)
	{
		state = LAttack2;
	}
	
	if(keyPressed_heavyAttack && image_index > 3)
	{
		state = HAttack2;
	}
	
	if (image_index >= 5)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}