function LAttack(){
if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}

	//	hsp = 0;

	var _attackTypeTemp = 0;

	if(image_index<3)
	{
	hsp = 2*face;
	}
	else
	{
		hsp = 0;
	}
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 1, 6, 2, 12, 0.01, 0, sPlayerAttackL1, sPlayerAttackL1_HB);
	
	if (keyPressed_lightAttack && image_index > 1)
	{
		state = LAttack2;
	}
	
	if (keyPressed_heavyAttack && image_index > 1)
	{
		state = HAttack1Up;
	}
	
	if (keyPressed_heavyAttack && image_index > 1 && keyUp)
	{
		//state = HAttack1Up;
	}
	
	if (image_index >= 5)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}