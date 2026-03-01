function RangedEnemyAttack(){
	sprite_index = sTempRangedEnemyShoot;
	image_index = 1;
	var _holdup = false;
	var _distFrom = sign( (target.x) - (x) );
	var _telegraph = time_source_create(time_source_game, 30, time_source_units_frames, function()
	{
		chungus = true;
	}, []);
	
	//var _distFrom = sign( (target.x) - (x) );
	
	if (_distFrom > 0)
	{
		image_xscale = -1;
	}
	
	if (_distFrom < 0)
	{
		image_xscale = 1;
	}
	
	time_source_start(_telegraph);
		
	if (chungus)
	{
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
			chungus = false;
		}
		else
		{
			stateWaitDuration = 30;
		}
		state = ENEMYSTATE.WAIT;
	}
	
	/*				Uncomment this code to see the enemy fire a laser that deletes the player but also kind of looks cool as fuck
	{
			var _shoot = instance_create_layer(x-(30*image_xscale), y-65, "enemies", oRangedEnemyTempProjectile)
		fireCount++;
	
			with (_shoot)
		{
			var _distFrom = sign( (target.x) - (x) );
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
	}, []);*/
		
	
}
