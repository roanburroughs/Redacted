

function AggroCameraIdle(draw=false){
		 //
		
		 
	//	 aim=choose("bottomleft","straightleft","topleft","down","bottomright","straightright","topright")
	//	 show_debug_message(fps)
		 
		 var anglesprite = sCamera_down
		 var angle1=0
		 var angle2=0
		if(aim="bottomleft")
		{
			//angle1 =175
			//angle2 =275
			
			angle1 = 210
			angle2 = 240
			anglesprite = sCamera_bottomleft
		}
 		if(aim="straightleft")
		{
			//angle1 =130
			//angle2 =230
			
			angle1 = 160
			angle2 = 190
			anglesprite = sCamera_straightleft
		}
 		if(aim="topleft")
		{
			angle1 =85
			angle2 =185
			anglesprite = sCamera_topleft
		}
		 		if(aim="down")
		{
			//angle1 =220
			//angle2 =320
			
			angle1 = 255
			angle2 = 285
			anglesprite = sCamera_down
		}
		
 		if(aim="bottomright")
		{
			//angle1 =255
			//angle2 =355
			
			angle1 = 310;
			angle2 = 340;
			//anglesprite = sCamera_bottomright
			anglesprite = sCamera_bottomleft
			image_xscale = -1
		}
 
 if(aim="straightright")
		{
			//angle1 =310
			//angle2 =410
			
			angle1 = 345
			angle2 = 375
			//anglesprite = sCamera_straightright
			anglesprite = sCamera_straightleft
			image_xscale = -1
		}
		if(aim = "topright") 
		{
		angle1=350
		angle2=460
		anglesprite = sCamera_topright
		}
 
				if (draw) {
					sprite_index=anglesprite
					    draw_set_colour(c_red)
					    draw_set_alpha(0.5)
    
					    draw_primitive_begin(pr_trianglefan)
					    draw_vertex(x,y)
							 }
					//function VisionCone
				for(var i=angle1;i<=angle2;i+=precision)
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

								currentdistance += 5
							}



							if(draw)
							{
	
								//This works if you like lag
								 //	draw_line_colour(x,y,x+lengthdir_x(currentdistance,i),y+lengthdir_y(currentdistance,i),c_red,c_red)
	
	 
	 
 
								draw_vertex(x + lengthdir_x(currentdistance, i), y + lengthdir_y(currentdistance, i))

							}
	 
							else if(instance_exists(oPlayer) and oPlayer.framecounter %10=0 and active=true)
							{
								{
									if(collision_line(x,y,x+lengthdir_x(currentdistance,i),y+lengthdir_y(currentdistance,i),oPlayer,false,false))
									{
										if(!playerSpotted)
										{
											audio_play_sound(soCameraSpotted, 1, false, 0.5);
											playerSpotted = true;
										}
									//	show_message("aggro") //I mean it works
								// show_message("aggro")
									AggroEnemy()
									DartTrapTrigger()
									//oAggroCamera.active=false
									active = false;
									alarm[10]=100
									}
								}
							}
	
						}

				if(draw)
				{
				    draw_primitive_end()
				    draw_set_alpha(1)
				}
				
		

 
}