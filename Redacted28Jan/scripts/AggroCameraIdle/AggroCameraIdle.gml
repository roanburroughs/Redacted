

function AggroCameraIdle(draw=false){
		 //
		 show_debug_message(fps)
		if(aim="bottomright")
		{
	
	
 
		
				if (draw) {
					    draw_set_colour(c_red)
					    draw_set_alpha(0.5)
    
					    draw_primitive_begin(pr_trianglefan)
					    draw_vertex(x,y)
	
							 }
					//function VisionCone
				for(var i=180;i<=270;i++)
						{
							var currentdistance = 0
							 while( currentdistance<visiondistance)
							{
	
	
									var checkx = x+lengthdir_x(currentdistance,i)
								var checky = y+lengthdir_y(currentdistance,i)

								if(position_meeting(checkx,checky,oWall))
								{
								break	//end the while loop
								}

								currentdistance += 4
							}



							if(draw)
							{
	
								//This works if you like lag
								 //	draw_line_colour(x,y,x+lengthdir_x(currentdistance,i),y+lengthdir_y(currentdistance,i),c_red,c_red)
	
	 
	 
 
								draw_vertex(x + lengthdir_x(currentdistance, i), y + lengthdir_y(currentdistance, i))

							}
	 
							else if(collision_line(x,y,x+lengthdir_x(currentdistance,i),y+lengthdir_y(currentdistance,i),oPlayer,false,false))
							{
								//show_message("aggro") //I mean it works
								
								//SET TO AGGRO STATE
								
								with (oEnemyTemp)
								{
								//	if(state =  ENEMYSTATE.WANDER )state = ENEMYSTATE.CHASE // this aint doing anything
								}

							}
	
						}

				if(draw)
				{
				    draw_primitive_end()
				    draw_set_alpha(1)
				}
	
		}

 
}