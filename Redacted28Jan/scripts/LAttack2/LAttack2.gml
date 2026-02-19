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
	hsp= (2*image_speed)*face;
	}
	else
	{
		hsp=0;
	}
	
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 1, 6, 2, 12, 0.01, 0, sPlayerAttackL2, sPlayerAttackL2_HB);
	
	if (keyPressed_lightAttack && image_index > 2)
	{
		state = LAttack3;
	}
	
	if (keyPressed_heavyAttack && image_index > 2)
	{
		state = HAttack2;
	}
	
	
	if (image_index >= 5)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}