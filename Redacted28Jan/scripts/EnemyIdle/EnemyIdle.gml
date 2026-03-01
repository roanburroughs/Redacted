function EnemyIdle(){
	hsp = 0;
	
	if (++aggroCheck >= aggroCheckDuration)
	{
		aggroCheck = 0;
		if (instance_exists(oPlayer)) && (point_distance(x, y, oPlayer.x, oPlayer.y) <= enemyAggroRadius)
		{
			target = oPlayer;
			if((target.y >= y-50) && (target.y <= y+50))
			{
				inRange = true;
			}
			else
			{
				inRange = false;
				fireCount = 0;
				chungus = false;
			}
		}
		
		if (instance_exists(oPlayer)) && (point_distance(x, y, oPlayer.x, oPlayer.y) > enemyAggroRadius)
		{
			inRange = false;
			target = 0;
		}
	}
	
	if (inRange)
	{
		state = ENEMYSTATE.ATTACK;
	}
	else
	{
		sprite_index = sprIdle;
	}

}