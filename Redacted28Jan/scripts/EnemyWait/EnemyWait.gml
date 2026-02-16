function EnemyWait(){
	
	if(staggered)
	{
		sprite_index = sprStagger;
	}
	else
	{
		sprite_index = sprIdle;
	}
	/*
	if(oPlayer.executing)
	{
		stateWaitDuration = 999;
	}*/

	if (++stateWait >= stateWaitDuration)
	{
		if (target != oPlayer)
		{
			target = oPlayer;
		}
		stateWait = 0;
		state = stateTarget;
	}
	
}