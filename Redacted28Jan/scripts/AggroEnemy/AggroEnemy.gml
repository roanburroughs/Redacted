function AggroEnemy(){


	//SET TO AGGRO STATE
								
								with (oEnemyTemp)
								{
								 	if(state =  ENEMYSTATE.WANDER )
									{state = ENEMYSTATE.CHASE // this aint doing anything
										target = oPlayer;
									}										
								}
								
								with (oDrone)
								{
									if(state = ENEMYSTATE.DRONE_WANDER)
									{
										state = ENEMYSTATE.DRONE_CHASE;
										target = oPlayer;
									}
								}
								
								
									with (oDrone)
								{
								 	if(state =  ENEMYSTATE.DRONE_WANDER )
									{state = ENEMYSTATE.DRONE_CHASE // this aint doing anything
										target = oPlayer;
									}
										
								}


}