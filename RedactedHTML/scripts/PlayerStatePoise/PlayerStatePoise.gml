function PlayerStatePoise(){
	
	//Direction
		moveDir = keyRight - keyLeft;
	
		//Get my face
		if moveDir != 0 { face = moveDir; };
	
	//sprite_index = poiseSpr;
	//image_speed = 0;
	hsp = 0;
	if(keyPressed_lightAttack && (keyRight || keyLeft || keyUp))
		{
			PaintAttack();
		}
	
	if((keyPressed_lightAttack) && (!keyRight) && (!keyLeft) && (!keyUp))
	{
		flash = 1;
		parrying = true;
		state = PlayerStateAttack;
		stateAttack = Parry;
	}
	
	if(!keyPressed_Poise)
	{
		state = PlayerStateFree;
	}
	
}