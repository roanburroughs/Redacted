function LAttack2(){
	moveDir = keyRight - keyLeft;
	
	if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}
	
	var _attackTypeTemp = 0;
	
	if(image_index<1 && moveDir == -face)
	{
		face = -face;
	}

	if(image_index<3)
	{
	hsp= 5*face;
	}
	else
	{
		hsp=0;
	}
	
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 1, 20, 0.5, 18, 12, 0.01, 0, sPlayerAttackL2, sPlayerAttackL2_HB);
	
	if (keyPressed_lightAttack && image_index > 2)
	{
		state = LAttack3;
	}
	
	if (keyPressed_heavyAttack && image_index > 2)
	{
		state = HAttack2Up;
	}
	
	if (image_index >= 2) && (canDash) && (keyDash)
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
	
	
	if (image_index >= 5)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}