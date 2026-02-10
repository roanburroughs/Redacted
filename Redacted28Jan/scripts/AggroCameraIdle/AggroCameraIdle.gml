

function AggroCameraIdle(draw=false){
		 //
		 
		 
	//	 aim=choose("bottomleft","straightleft","topleft","down","bottomright","straightright","topright")
	//	 show_debug_message(fps)
		 
		 var anglesprite = sCamera_down
		 var angle1=0
		 var angle2=0
		if(aim="bottomleft")
		{
			angle1 =175
			angle2 =275
			anglesprite = sCamera_bottomleft
		}
 		if(aim="straightleft")
		{
			angle1 =130
			angle2 =230
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
			angle1 =220
			angle2 =320
			anglesprite = sCamera_down
		}
		
 		if(aim="bottomright")
		{
			angle1 =265
			angle2 =365
			anglesprite = sCamera_bottomleft
		}
 
 if(aim="straightright")
		{
			angle1 =310
			angle2 =410
			anglesprite = sCamera_straightright
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
				for(var i=angle1;i<=angle2;i++)
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
								
							AggroEnemy()

							}
	
						}

				if(draw)
				{
				    draw_primitive_end()
				    draw_set_alpha(1)
				}
	
		

 
}