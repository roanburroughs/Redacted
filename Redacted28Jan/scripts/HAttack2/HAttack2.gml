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
		hsp = (4*image_speed)*face;
	}
	
	if(image_index > 14 && image_index < 16)
	{
		hsp = 0;
	}
	
	if(image_index > 16)
	{
		hsp = (1*image_speed)*face;
	}
		
	if(image_index == 6)
	{
		ds_list_clear(hitByAttack);
	}
	
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, juggletime, sprite, mask
	ProcessMultiAttack(0, 1, 1, 2, 6, 6, 0.01, -0.1, 1, sPlayerAttackH2, sPlayerAttackH2_HB2);
	
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	//ProcessAttack(_attackTypeTemp, 6, 6, 5, 8, 16, 0, -0.5, sPlayerAttackH2, sPlayerAttackH2_HB);
	ProcessAttack(_attackTypeTemp, 6, 6, 5, 4, 18, 0, -0.5, sPlayerAttackH2, sPlayerAttackH2_HB);
	
	if(keyPressed_lightAttack && image_index > 12)
	{
		state = LAttack3;
	}
	
	if(keyPressed_heavyAttack && image_index > 12)
	{
		state = HAttack3;
	}
	
	if (image_index >= 16)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}