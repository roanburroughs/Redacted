function DogAttack(){
	var _timer = time_source_create(time_source_game, 10, time_source_units_frames, function()
	{
		var _grav = 0;
		_grav +=0.1;
		
		vsp = lerp(6, -6, _grav);
	}, []);
	var _fall = 0;
	var _chungus = 0;
	
	if(image_index < 1)
	{
		hsp = 0;
	}
	
	if(image_index >= 1 && image_index < 5)
	{
		leap +=0.1;
		show_debug_message(_chungus)
		hsp = lengthdir_x(10, dir);
		if(leap <= 1)
		{
			fall += 0.07;
			vsp = lerp(-7, 0, fall);
		}
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
		leap = 0;
		fall = 0;
		//enemySpeed = 2.75;
		stateTarget = ENEMYSTATE.CHASE;
		stateWaitDuration = 15;
		state = ENEMYSTATE.WAIT;
	}

	
	if(instance_exists(oPlayer) and !oPlayer.hurt)ProcessEnemyAttack(id, 5, 8, 12, 0, -0.33, sDogAttack, sDogAttack_HB);

}