function AggroEnemy(){
		 with(pEnemy)
		 {
				if(!enraged) 
				{
	show_message("enraged")
					enraged=true
					alarm[7]=300
				}
		 }

	//SET TO AGGRO STATE
								with(oRangedEnemyTemp)
								{
									
								
									if (state=ENEMYSTATE.IDLE 
										and
										y>oPlayer.y-100
										and
										y<oPlayer.y+100
										
										
										and point_distance(x,y,other.x,other.y)<other.aggrorange
										
										) 
										{
											state= ENEMYSTATE.ATTACK
											target = oPlayer
										}
											
								}
								with (oEnemyTemp)
								{
								 	if(state =  ENEMYSTATE.WANDER and point_distance(x,y,other.x,other.y)<other.aggrorange)
									{state = ENEMYSTATE.CHASE // this aint doing anything
										target = oPlayer;
									}										
								}
								with (oShieldEnemyTemp)
								{
								 	if(state =  ENEMYSTATE.WANDER and point_distance(x,y,other.x,other.y)<other.aggrorange)
									{state = ENEMYSTATE.CHASE // this aint doing anything
										target = oPlayer;
									}										
								}
								with (oDrone)
								{
									if(state = ENEMYSTATE.DRONE_WANDER and point_distance(x,y,other.x,other.y)<other.aggrorange	)
									{
										state = ENEMYSTATE.DRONE_CHASE;
										target = oPlayer;
									}
								}
								
								
							/*	with(oDartTrap)
								{
									if(point_distance(x,y, other.x, other.y)<other.aggrorange)
									{
									//if(aggro=false and alarm[0]=-1)aggro=true
									}
									
								}
								
								*/
								 


}