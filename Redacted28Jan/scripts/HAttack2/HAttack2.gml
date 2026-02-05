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
	
	if(image_index > 0 && image_index < 4)
	{
		hsp = 0;
	}
	
	if(image_index > 4 && image_index < 14)
	{
		hsp = 4*face;
	}
	
	if(image_index > 14 && image_index < 16)
	{
		hsp = 0;
	}
	
	if(image_index > 16)
	{
		hsp = 1*face;
	}
		
	
	//attack type, damage, stun damage, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 6, 6, 8, 16, 0, -0.5, sPlayerAttackH2, sPlayerAttackH2_HB);
	
	if (image_index = 16)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}