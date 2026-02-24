function DogAttack(){
	var _timer = time_source_create(time_source_game, 10, time_source_units_frames, function()
	{
		var _grav = 0;
		_grav +=0.1;
		
		vsp = lerp(6, -6, _grav);
	}, []);
	
	if(image_index < 1)
	{
		hsp = 0;
	}
	
	if(image_index >= 1)
	{
		hsp = lengthdir_x(12, dir);
		//vsp = lerp(-6, 0, 0);
		//time_source_start(_timer);
	}
	
	if(image_index >= 5)
	{
		hsp = 0;
	}
	
	if(floor(image_index) == 6)
	{
		hsp = 0;
		//enemySpeed = 2.75;
		stateTarget = ENEMYSTATE.CHASE;
		stateWaitDuration = 15;
		state = ENEMYSTATE.WAIT;
	}

	
	if(instance_exists(oPlayer) and !oPlayer.hurt)ProcessEnemyAttack(id, 5, 8, 12, 0, -0.33, sDogAttack, sDogAttack_HB);

}