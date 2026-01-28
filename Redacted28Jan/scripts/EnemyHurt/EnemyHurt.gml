function EnemyHurt(){
sprite_index = sprMove;
if(object_index = oDrone)
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
		if(target != oPlayer)
		{
			target = oPlayer;
		}
		if (statePrevious != ENEMYSTATE.ATTACK) state = statePrevious;
		else state = ENEMYSTATE.CHASE;
		weight = 0;
	}
	
	if( (object_index = oDrone) && (onGround) && (enemyPaint >= enemyPaintMax))
	{
		state = ENEMYSTATE.DRONE_DIE;
	}
	
	if( (object_index = oEnemyTemp) && (onGround) && (staggered) )
	{
		//var _execute = instance_create_layer(x, y, "Instances", oExecuteArea);
		//hsp = 0;
		//vsp = 0;
		//enemySpeed = 2.75;
		stateTarget = ENEMYSTATE.CHASE;
		stateWaitDuration = 120;
		state = ENEMYSTATE.WAIT;
		//state = ENEMYSTATE.STAGGER;
		
	}
	
}