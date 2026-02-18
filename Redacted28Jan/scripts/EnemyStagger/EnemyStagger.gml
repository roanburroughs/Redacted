function EnemyStagger(){
	EnemyCollision();
	
	paintcolourfromglobal()
	paintedcolour = paintcolour
	sprite_index = sprStagger;
	hsp = 0;
	//show_message("HELP")
		
	if (++parryTimer >= parryDuration)
	{
	parryTimer = 0;
//	paintedcolour=c_white
	state = stateTarget;
	}

}