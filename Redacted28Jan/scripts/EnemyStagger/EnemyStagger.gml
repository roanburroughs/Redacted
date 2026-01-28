function EnemyStagger(){
	EnemyCollision();
	
	sprite_index = sprStagger;
	hsp = 0;
		
	if (++staggerTimer >= staggerDuration)
	{
	staggerTimer = 0;
	state = stateTarget;
	}

}