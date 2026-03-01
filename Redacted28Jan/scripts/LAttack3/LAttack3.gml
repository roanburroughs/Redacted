function LAttack3(){
	moveDir = keyRight - keyLeft;
	
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
	
	var _attackTypeTemp = 0;
	
	if(image_index<1 && moveDir == -face)
	{
		face = -face;
	}
	
	
if(image_index>2 && image_index<4)
	{
	hsp= 7*face;
	}
	else
	{
		hsp=0;
	}
	
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 1, 30, 0.5, 20, 12, 0.01, 0, sPlayerAttackL3, sPlayerAttackL3_HB);
	
	if (keyPressed_lightAttack && image_index > 3)
	{
		//state = LAttack4;
	}
	
	if (keyPressed_heavyAttack && image_index > 3)
	{
		state = HAttack4;
	}
	
	if (image_index >= 3) && (canDash) && (keyDash)
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

	
	if (image_index = 6)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}