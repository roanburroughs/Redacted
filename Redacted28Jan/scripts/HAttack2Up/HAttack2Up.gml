function HAttack2Up(){
	
	var _attackTypeTemp = 1;
	
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
	
	if(image_index<2)
	{
		hsp = 0;
	}
	
	if(image_index>5)
	{
		//hsp = 0;
	}
	
	if(image_index>5)
	{
		hsp=lerp(hsp,12*face, 0.2);
		vsp=lerp(vsp, -8, 0.3);
		maxSpeed = 12;
	}

	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 1, 6, 10, 28, 0, -0.75, sPlayerAttackH2_Up2, sPlayerAttackH2_Up2_HB);
	if (image_index >= 14)
	{
		//sprite_index = idleSpr;
		state = PlayerStateFree;
	}

}