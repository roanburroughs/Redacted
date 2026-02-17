function RangedEnemyAttack(){
	sprite_index = sTempRangedEnemyShoot;
	image_index = 1;
	var _shootSide = 0;
	
	var _distFrom = sign( (target.x) - (x) );
	
	if (_distFrom > 0)
	{
		image_xscale = -1;
	}
	
	if (_distFrom < 0)
	{
		image_xscale = 1;
	}
	
	var _shoot = instance_create_layer(x-(30*image_xscale), y-65, "enemies", oRangedEnemyTempProjectile)
	fireCount++;
	
		with (_shoot)
	{
		hsp = 8*_distFrom;
	}


	stateTarget = ENEMYSTATE.IDLE;
	if(fireCount>=3)
	{
		stateWaitDuration = 120;
	}
	else
	{
		stateWaitDuration = 30;
	}
	state = ENEMYSTATE.WAIT;
		
	
}
