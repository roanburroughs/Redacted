function HAttack2(){
	moveDir = keyRight - keyLeft;
	
	var _attackTypeTemp = 1;
	
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
	
	if(image_index>1 && image_index<6)
	{
		hsp = 3*face;
	}
	
	if(image_index>6 && image_index<8)
	{
		hsp = 20*face;
	}
	
	if(image_index>8 && image_index<10)
	{
		hsp = 0;
	}
	
	
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	//ProcessAttack(_attackTypeTemp, 6, 6, 5, 8, 16, 0, -0.5, sPlayerAttackH2, sPlayerAttackH2_HB);
	ProcessAttack(_attackTypeTemp, 6, 6, 5, 0.5, 4, 18, 0, -0.5, sPlayerAttackH3, sPlayerAttackH3_HB);
	if(!audio_is_playing(HeavyAttack)) audio_play_sound(HeavyAttack, 0, false, 1, 0, random_range(0.9, 1));
	
	if(keyPressed_lightAttack && image_index > 9)
	{
		//state = LAttack3;
	}
	
	if(keyPressed_heavyAttack && image_index > 9)
	{
		//state = HAttack4;
	}
	
	if (image_index >= 6) && (canDash) && (keyDash)
	{
		canDash = false;
		canJump = 0;
		//dashDirection = point_direction(0, 0, keyRight-keyRight, keyRight-keyRight);
		//dashDirection = moveDir;
		dashSp = dashDistance/dashTime;
		dashEnergy = dashDistance;
		if(!onGround)
		{
			freeReady = false;
		}
		sprite_index = dashSpr;
		moveDir = keyRight - keyLeft;
		face = moveDir;
		state = PlayerStateDash;
	}
	
	if (image_index >= 11)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}