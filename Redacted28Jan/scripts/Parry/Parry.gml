function Parry(){
	
	var _parryTime = time_source_create(time_source_game, 6, time_source_units_frames, function()
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}, []);
	
	
	sprite_index = parrySpr;
	
	if(riposteReady)
	{
		state = Riposte;
	}
	/*if(riposteReady && keyPressed_heavyAttack) create an object that spawns in front of an enemy when riposteready = true
	{											heavy attack inside object to riposte, object despawns after enough time
		state = Riposte;						when object despawns, make riposteready = false
	}*/
	
	if(flash<=0)
	{
		//sprite_index = idleSpr;
		//state = PlayerStateFree;
		time_source_start(_parryTime);
	}
}