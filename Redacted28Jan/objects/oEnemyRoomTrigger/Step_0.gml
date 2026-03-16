if(trigger)
{
	with(enemyRoom)
	{
		roomActive = true;
		for(var i = 0; i<Enemies; i++)
		{
			with(EnemyList[| i])
			{
				if(state = ENEMYSTATE.WANDER)
				{
				state = ENEMYSTATE.CHASE;
				target = oPlayer;
				}
				if(state = ENEMYSTATE.IDLE)
				{
					enemyAggroRadius = 2000;
				}
				
				if(state = ENEMYSTATE.DRONE_WANDER)
				{
					enemyAggroRadius = 425;
				}
				
			}
		}
	}
	if(enemyRoom.roomActive)
	{
		instance_destroy();
	}
}
