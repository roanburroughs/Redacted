function HAttack3(){
	moveDir = keyRight - keyLeft;
	
	var _attackTypeTemp = 1;
	
	if(image_index<1 && moveDir == -face)
	{
		face = -face;
	}
	
	if(image_index > 0 && image_index < 6)
	{
		hsp = (3*image_speed)*face;
	}
	
	if(image_index > 6 && image_index < 8)
	{
		hsp = 0;
	}
	
	if(image_index > 8)
	{
		//hsp = 1*face;
		hsp = 0;
	}
	
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 1, 7, 6, 12, -0.67, -0.33, sPlayerAttackH3, sPlayerAttackH3_HB);
	
	if(keyPressed_lightAttack && image_index > 7)
	{
		state = LAttack4;
	}
	
	if(keyPressed_heavyAttack && image_index > 7)
	{
		state = HAttack4;
	}
	
	if(image_index >= 11)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
	

}