function AggroEnemy(){


	//SET TO AGGRO STATE
								
								with (oEnemyTemp)
								{
								 	if(state =  ENEMYSTATE.WANDER )
									{state = ENEMYSTATE.CHASE // this aint doing anything
										target = oPlayer;
									}
										
								}


}