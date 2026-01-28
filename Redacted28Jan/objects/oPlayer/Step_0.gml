
	//if(!audio_is_playing(_854821_A_Little_Tired)) audio_play_sound(_854821_A_Little_Tired,1,false,0.1) 


if(hp<=0) dead=true
if(dead)
{
//room_restart()//we should have an actual thing happen when you die, but for now just having the a statement for it is fine, so its jus room restart rn
exit	
}

if(instance_exists(oTextBoxController))
{
//Things like gravity

//Stop alarms from counting down
  for (var i = 0; i < 12; i++) {
        if (alarm[i] > -1) alarm[i] += 1;
    }
	
exit
	
}	
 
	//Inputs
	getControls();
	//show_debug_message(fps)
	//show_debug_message(executeReady);
	framecounter++
	image_speed=1 //putting this here since things like rise and fall set it to 0
	script_execute(state);

	invulnerable = max(invulnerable-1, 0);
          
		if (place_meeting(x + hsp, y, oWall))
		{
			while (abs(hsp) > 0.1)
			{
				hsp *= 0.5;
				if (!place_meeting(x + hsp, y, oWall))
				{
					x += hsp;
				}
			}
			hsp = 0;
		}
		x += hsp;
	
		var inst = instance_nearest(oPlayer.x + oPlayer.hsp, oPlayer.y, oPaintedFloor) //interact with only this painted floor


		//Y Collision & Movement
	
		//Moving vertically

	 if(keyDown) vsp += grv * 5;

	//else    if (inst != noone and inst.image_angle != 0 and inst.image_angle != 180 and inst.image_blend!=c_white)
	   // {
	//		vsp+=grv*0.5
	//	}

		else if(key_jump_held and vsp<0 and candoublejump) vsp+=grv*0.7
	    else vsp += grv*2;
	
	 
		if (place_meeting(x, y + vsp, oWall))
		{
			if (vsp > 0) 
			{
				canJump = 10;
			//	canDash = true;
			}
			while (abs(vsp) > 0.1)
			{
				vsp *= 0.5;
				if (!place_meeting(x, y + vsp, oWall))
				{
					y += vsp;
				}
			}
			vsp = 0;
		}

		    if (vsp > 0 and place_meeting(x, y + vsp, oPlatform) and !keyDown) {
				if (vsp > 0) 
			{
				canJump = 10;
			//	canDash = true;
			}
		
     
	        if (!place_meeting(x, y, oPlatform)) {
	         while (!place_meeting(x, y + sign(vsp), oPlatform)) {//Insures you can cleanly touch the wall, remove to see what I mean
           
				   y += sign(vsp);
	            }
	            vsp = 0;
		 
	        }
	    }
	
	
		y += vsp;
