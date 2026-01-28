function EnemyParried(){
	EnemyCollision();
	
	sprite_index = sprParried;
	hsp = 0;
		
	if(image_index = 4)
	{
		image_speed = 0;
	}
	
	if (++staggerTimer >= staggerDuration)
	{
	staggerTimer = 0;
	state = stateTarget;
	sprite_index = sprMove;
	}

}