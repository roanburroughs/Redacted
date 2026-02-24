function AggroEnemy(){


	//SET TO AGGRO STATE
								with(oRangedEnemyTemp)
								{
									
								
									if (state=ENEMYSTATE.IDLE 
										and
										y>oPlayer.y-100
										and
										y<oPlayer.y+100
										
										
										) 
										{
											state= ENEMYSTATE.ATTACK
											target = oPlayer
										}
											
								}
								with (oEnemyTemp)
								{
								 	if(state =  ENEMYSTATE.WANDER )
									{state = ENEMYSTATE.CHASE // this aint doing anything
										target = oPlayer;
									}										
								}
								
								with (oDrone)
								{
									if(state = ENEMYSTATE.DRONE_WANDER	)
									{
										state = ENEMYSTATE.DRONE_CHASE;
										target = oPlayer;
									}
								}
								
								
								with(oDartTrap)
								{
								if(aggro=false and alarm[0]=-1)aggro=true	
								}
								 


}