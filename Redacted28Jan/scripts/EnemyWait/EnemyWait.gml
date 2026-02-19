function EnemyWait(){
	
	if(staggered)
	{
		sprite_index = sprStagger;
	}
	else
	{
		if(object_index = oEnemyTemp)
		{
			sprite_index = sprIdle;
		}
		
		if(object_index = oRangedEnemyTemp)
		{
			sprite_index = sprShoot;
			image_index = 0;
			with(oRangedEnemyTemp)
			{
				if(fireCount >=3)
				{
					fireCount=0;
				}
			}
		}
		if(object_index = oEnemy)
		{
			sprite_index = sprIdle;
		}
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