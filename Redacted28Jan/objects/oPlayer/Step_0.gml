
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
	framecounter++
	//image_speed=1 //putting this here since things like rise and fall set it to 0
	//commenting out for now while working with the parry, doesn't seem to break anything (yet)
	script_execute(state);

	invulnerable = max(invulnerable-1, 0);
          
		/*      
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
	*/
	var collider = oWall or oEnemyTemp
	
	
	var _subPixelX = .5;
		if place_meeting(x + hsp, y, oWall)
		{
			//First check if there is a slope to go up
			if !place_meeting( x + hsp, y - abs(hsp)-1, oWall )
			{
				while place_meeting( x + hsp, y, oWall ) { y -= _subPixelX; };
			}
			//Next check for ceiling slopes, otherwise, do a regular collision
			else
			{
				//Ceiling slopes
				if !place_meeting( x + hsp, y + abs(hsp)+1, oWall )
				{
					while place_meeting( x + hsp, y, oWall ) { y += _subPixelX; };
				}
				//Normal Collision
				else
				{
					//Scoot up to wall precisely
					var _pixelCheck = _subPixelX * sign(hsp);
					while !place_meeting(x + _pixelCheck, y, oWall)
					{
						x += _pixelCheck;
					}
	
					//Set hsp to zero to "collide"
					hsp = 0;
				}
				setAtWall(true);
			}
		}
		else
		{
			setAtWall(false);
		}
		
		x += hsp;
	
	var inst = instance_nearest(oPlayer.x + oPlayer.hsp, oPlayer.y, oPaintedFloor) //interact with only this painted floor
	
	//Y Collision & Movement
	
	//Moving vertically

 if(keyDown) vsp += grv * 5;

else    if (inst != noone and inst.image_angle != 0 and inst.image_angle != 180 and inst.image_blend!=c_white)
    {
		vsp+=grv*0.5
	}

	//else if(key_jump_held and vsp<0 and candoublejump) vsp+=grv*0.7
    //else vsp += grv*2;
	
	if coyoteHangTimer > 0
		{
			//Count the timer down
			coyoteHangTimer--;
		}
		else
		{
			//Apply gravity to the player
			vsp += grv;
			//We're no longer on the ground
			setOnGround(false);
		}
		
	//Reset/Prepare jumping variables
	if onGround
	{
		jumpCount = 0;
		coyoteJumpTimer = coyoteJumpFrames;
	}
	else
	{
		//If the player is in the air, make sure they can't do an extra jump
		coyoteJumpTimer--;
		if jumpCount = 0 && coyoteJumpTimer <= 0 { jumpCount = 1; };
	}
	
	/* 
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
	}*/
	
	//Cap falling speed
	if vsp > termVel { vsp = termVel; };
	
	//Upwards Y Collision (with ceiling slopes)
	if vsp < 0 && place_meeting( x, y + vsp, oWall )
	{
		//Scoot up to the wall precisely
		var _subPixelY = .5
		var _pixelCheck = _subPixelY * sign(vsp);
		while !place_meeting( x, y + _pixelCheck, oWall)
		{
			y += _pixelCheck;
		}
		
		//Bonk code
		if vsp < 0
		{
			jumpHoldTimer = 0;
		}
	
		//Set vsp to 0 to collide
		vsp = 0;
	}
	
	//Downwards Y Collision
			if vsp >= 0
			{
				var _subPixelY = .5;
				if place_meeting( x, y + vsp, oWall )
				{
					//Scoot up to the wall precisely
					var _pixelCheck = _subPixelY * sign(vsp);
					while !place_meeting( x, y + _pixelCheck, oWall )
					{
						y += _pixelCheck;
					}
					//Set vsp to 0 to collide
					vsp = 0;
				}
				
				if place_meeting( x, y + vsp, oPlatform) && !keyDown
				{
					
					var _pixelCheck = _subPixelY * sign(vsp);
					while !place_meeting(x, y + _pixelCheck, oPlatform)
					{
						y += _pixelCheck;
					}
					if (!place_meeting(x, y, oPlatform)) 
					{
						while (!place_meeting(x, y + sign(vsp), oPlatform)) //Insures you can cleanly touch the wall, remove to see what I mean
						{
							y += sign(vsp);
						}
					vsp = 0;
					setOnGround(true);
					}
				}
			
				//Set if I'm on the ground
				if place_meeting( x, y+1, oWall )
				{
					setOnGround(true);
				}
			}
			
			
		//Wall jump reset
		if(wallJumping)
		{
			wallJumpLock += 0.1;
			if(wallJumpLock >= 1) || (!key_jump_held)
			{
				wallJumping = false;
			}
		}
			
/*
	    if (vsp > 0 and place_meeting(x, y + vsp, oPlatform) and !keyDown) {
			if (vsp > 0) 
		{
			//canJump = 10;
			setOnGround(true);
		//	canDash = true;
		}
		
     
        if (!place_meeting(x, y, oPlatform)) {
         while (!place_meeting(x, y + sign(vsp), oPlatform)) {//Insures you can cleanly touch the wall, remove to see what I mean
           
			   y += sign(vsp);
            }
            vsp = 0;
		 
        }
    }
*/
			
	
	y += vsp;
