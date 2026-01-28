function LAttack4(){
	moveDir = keyRight - keyLeft;
	
	if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}
	
	var _attackTypeTemp = 1;
	
	if(image_index<1 && moveDir == -face)
	{
		face = -face;
	}
	
if(image_index<3)
	{
	hsp=4*face;
	}
	else
	{
		hsp=0;
	}

	//attack type, damage, stun damage, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 2, 2, 28, 0, -0.33, sPlayerAttackL4, sPlayerAttackL4_HB);
	
	if (keyPressed_heavyAttack && image_index>3)
	{
		state = HAttack4;
	}
	
	if (image_index = 6)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}