function HeavyDownAir(){
	
	if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}

	//grav = 0.275
	var _attackTypeTemp = 2;
	var _slowdown = 0;
	
	if(image_index < 8)
	{
		_slowdown+=0.015;
		hsp = lerp(hsp, 0, _slowdown)
		vsp = -3;
	}
	if(image_index > 8)
	{
		_slowdown += 0.1;
		hsp = lerp(hsp, 0, _slowdown)
		grv = 2.875;
	}
	
	if(image_index > 10 && image_index < 11 && !onGround)
	{
		image_index = 9
	}
	
	if(image_index >= 8 && onGround)
	{
		grv = 0.475;
		hsp = 0;
	}
	
	if(image_index >= 14 && (keyLeft || keyRight))
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
	
	if(image_index >= 14 && keyPressed_heavyAttack && executeReady)
	{

		state = PlayerStateAttack;
		stateAttack = Execute;
		executing = true;
	}
	
	if(image_index >= 18)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
	
	
	
	//attack type, damage, stun damage, hitstun, hspknock, vspknock, hspairtime, vspairtime, sprite, mask

		ProcessAttack(_attackTypeTemp, 12, 14, 14, 12, 23, 0, -0.33, sPlayerHeavyDownAir, sPlayerHeavyDownAir_HB1);
		ProcessAttack(_attackTypeTemp, 2, 1, 7, 8, 17, 0, 0, sPlayerHeavyDownAir, sPlayerHeavyDownAir_HB2);

	
	

}