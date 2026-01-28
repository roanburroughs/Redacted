function WolfAttack(){
	EnemyCollision();
	//var _toPlayer = ((oPlayer.x) - (x))
	
	if (image_index < 2)
	{
		hsp = 0;
	}
	else
	{
		//enemySpeed = 3.75;
		hsp = lengthdir_x(3, dir);
		//vsp = lengthdir_y(enemySpeed, dir);
		if (hsp != 0) image_xscale = -sign(hsp);
	}
	
	ProcessEnemyAttack(id, 5, 10, 2, 0.01, 0, sEnemyTempAttack, sEnemyTempAttack_HB);
	
	if (floor(image_index) == 6)
		{
			hsp = 0;
			//enemySpeed = 2.75;
			stateTarget = ENEMYSTATE.CHASE;
			stateWaitDuration = 15;
			state = ENEMYSTATE.WAIT;
		}
	
}