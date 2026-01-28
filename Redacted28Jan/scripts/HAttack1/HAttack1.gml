function HAttack1(){
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
	
	if(image_index<3)
	{
	hsp = 4*face;
	}
	else
	{
		hsp = 0;
	}

	//attack type, damage, stun damage, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 1, 16, 12, 0.01, -0.33, sPlayerAttackH1, sPlayerAttackH1_HB);
	
	if (image_index = 5)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}