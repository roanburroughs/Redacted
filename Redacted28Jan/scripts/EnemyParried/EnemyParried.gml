function EnemyParried(){
	
	sprite_index = sprParried;
	hsp = 0;
		
	if(image_index = 4)
	{
		image_speed = 0;
	}
	
	if (++parryTimer >= parryDuration)
	{
	parryTimer = 0;
	state = stateTarget;
	sprite_index = sprMove;
	}

}