function HAttack1Up(){
	
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
	
	if(image_index>1)
	{
	hsp = 5*face;
	}
	else
	{
		hsp = 0;
	}
	
	if(image_index>5)
	{
		//hsp = 0;
	}
	
	if(sprite_index = sPlayerAttackH1Up && image_index>2 && image_index<4)
	{
		vsp = -1;
	}


	//attack type, damage, stun damage, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 1, 12, 24, 0.67, -0.33, sPlayerAttackH1Up, sPlayerAttackH1Up_HB);
	
	if (image_index = 7)
	{
		//sprite_index = idleSpr;
		state = PlayerStateFree;
	}
	
	/*if(image_index = 5 && !onGround)
	{
		state = PlayerStateFree;
	}*/
}