function EnemyHurt(){

if(object_index = oEnemyTemp)
{
	sprite_index = sprMove;
}
if(object_index = oDrone || object_index = oRangedEnemyTemp)
{
	sprite_index = sprHurt;
}
EnemyCollision();
if(object_index = oDrone)
{
	grav = .275;
}

		image_speed = 1.0;
		weight+=0.1;
		if(weight <= 1)
		{
			//hspAirtime += 0.1;
			hsp = lerp(hspKnock, 0, hspAirtime); //horizontal knockback
			vspAirtime += 0.1;
			vsp = lerp(vspKnock, 0, vspAirtime); //vertical knockback
		}
		
		if (hsp != 0) image_xscale = sign(hsp);

	if((weight > 2) && (onGround) && (!staggered))
	{
		hsp = 0;
		if(target != oPlayer)
		{
			target = oPlayer;
		}
		if(weight > hitstun)
		{
			if (statePrevious != ENEMYSTATE.ATTACK) state = statePrevious;
			else if (object_index = oEnemyTemp ) state = ENEMYSTATE.CHASE;
			else if (object_index = oRangedEnemyTemp) state = ENEMYSTATE.IDLE;
			weight = 0;
			hitstun = 0;
		}
		else
		{
			sprite_index = sprIdle;
		}
	}
	
	if( (object_index = oDrone) && (onGround) && (enemyPaint >= enemyPaintMax))
	{
		state = ENEMYSTATE.DRONE_DIE;
	}
	
	if( (object_index = oEnemyTemp) && (weight>2) && (onGround) && (staggered) )
	{
		hsp = 0;
		
		if(staggerTimer >= staggerDuration)
		{
			
			if (statePrevious != ENEMYSTATE.ATTACK) state = statePrevious;
			else state = ENEMYSTATE.CHASE;
			weight = 0;
			hitstun = 0;
			staggerTimer = 0;
			enemyPaint = 0;
			staggered = false;
		}
		else
		{
			sprite_index = sprStagger;
			staggerTimer++;
		}
		
		if(target != oPlayer)
		{
			target = oPlayer;
		}
		
	}
	
}