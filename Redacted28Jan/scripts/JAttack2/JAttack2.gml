function JAttack2(){
	
	var _attackTypeTemp = 1;
	image_speed = 1;
	
if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}
	
	//Direction
	moveDir = keyRight - keyLeft;
		
	if(image_index<1 && moveDir == -face)
	{
		//face = -face;
	}
	
	hsp = 2*face;
		
	if(image_index>0 && image_index<2)
	{
		vsp = -1;
	}

	
	/*if(image_index>0 && image_index<2) with this code, could lead into a third jump attack if wanted
	{
		vsp = -1
	}
	else
	{
		vsp = 0;
	}*/
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 2, 2, 4, 2, 12, 0.01, -0.33, sPlayerAttackJ2, sPlayerAttackJ2_HB);
	
	if (keyPressed_lightAttack && image_index > 2)
	{
		if(vsp<0)
		{
		//state = JAttack1;
		}
		else
		{
		state = LAttack;
		}
	}
	
	if(vsp==0)
	{
		state = PlayerStateFree;
	}
	
	if (image_index = 5)
	{
		sprite_index = sPlayerFall;
		state = PlayerStateFree;
	}
	
}