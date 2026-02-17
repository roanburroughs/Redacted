function JAttack(){
	
	image_speed = 1;
	
	var _attackTypeTemp = 0;
	
if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}
	
//Direction
	moveDir = keyRight - keyLeft;
	
	hsp = 2*face;
	
	if(image_index>0 && image_index<3)
	{
	vsp = -1;
	}
	
	ProcessAttack(_attackTypeTemp, 2, 2, 3, 2, 12, 0.01, -0.33, sPlayerAttackJ1, sPlayerAttackJ1_HB);
	
	if (keyPressed_lightAttack && image_index > 2)
	{
		if(!onGround)
		{
			state = JAttack2;
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