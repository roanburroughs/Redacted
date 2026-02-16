function EnemyStagger(){
	EnemyCollision();
	
	sprite_index = sprStagger;
	hsp = 0;
		
	if (++parryTimer >= parryDuration)
	{
	parryTimer = 0;
	state = stateTarget;
	}

}