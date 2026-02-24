function ShieldEnemyAttack(){
	var _distFrom = sign( (target.x) - (x) );
	
	if (image_index < 5)
	{
		enemySpeed = 3.5;
		hsp = 6*-image_xscale;
	}
	
if( instance_exists(oPlayer) and !oPlayer.hurt)	ProcessEnemyAttack(id, 5, 10, 2, 0.01, 0, sTempShieldEnemyAttack, sTempShieldEnemyAttack_HB);
	
	if (floor(image_index) == 6)
	{
		hsp = 0;
			enemySpeed = 1.25;
			stateTarget = ENEMYSTATE.CHASE;
			stateWaitDuration = 60;
			state = ENEMYSTATE.WAIT;
	}

}