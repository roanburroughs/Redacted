
	//if(!audio_is_playing(_854821_A_Little_Tired)) audio_play_sound(_854821_A_Little_Tired,1,false,0.1) 
	
	

var _range = 2000
 

//1 Turn everything ON
instance_activate_region(x - (_range ), y - (_range ), (_range ) * 2, (_range ) * 2, true)

 //2 turn everything off. you need to turn it on first on line 10 or it wont listen to this or the following activation, weird ik
instance_deactivate_object(pEntity);

//3 turn everything near the player on
instance_activate_region(x - _range, y - _range, _range * 2, _range * 2, true);





if(hp<=0) dead=true
if(dead)
{
	if(!instance_exists(oDeathScreen))instance_create_layer(0,0,"UI",oDeathScreen)
	sprite_index=sdead_amara
//	instance_change(oDeadPlayer,true) //this is deprecated , i got it from a sara spaulding platformer tutorial, idk which specific one
//room_restart()//we should have an actual thing happen when you die, but for now just having the a statement for it is fine, so its jus room restart rn
//exit	
}
if(instance_exists(oTextBoxController))
{
//Things like gravity

//Stop alarms from counting down
  for (var i = 0; i < 12; i++) {
        if (alarm[i] > -1) alarm[i] += 1;
    }
	
//exit
	
}	
else {	//Inputs
	if(!dead)getControls();
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
}
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

 if(keyDown) && (state=PlayerStateFree) vsp += grv * 5;

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
	//if vsp > termVel && state = PlayerStateFree { vsp = termVel; };
	
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
				
				//if place_meeting( x, y + vsp, oConveyor )
				//{
				//	var _pixelCheck = _subPixelY * sign(vsp);
				//	while !place_meeting( x, y + _pixelCheck, oConveyor )
				//	{
			//			y+= _pixelCheck;
				//	}
			//		vsp = 0;
			//		setOnGround(true);
			//	}
				
				//Check for solid and semisolid platforms under me
		var _clampvsp = max( 0, vsp );
		var _list = ds_list_create(); //Create a DS list to store all of the objects we run into
		var _array = array_create(0);
		array_push( _array, oWall, oElevator );
		
		//Do the actual check and add objects to list
		var _listSize = instance_place_list( x, y+1 + _clampvsp + 8, _array, _list, false );
		
		//Loop through the colliding instances and only return one if its top is below the player
		for( var i = 0; i < _listSize; i++ )
		{
			//Get an instance of oWall or oSemiSolidWall from the list
			var _listInst = _list[| i];
			
			//Avoid magnetism
			if ( _listInst.vsp <= vsp || instance_exists(myFloorPlat) )
			&& ( _listInst.vsp < 0 || place_meeting( x, y+1 + _clampvsp, _listInst ) )
			{
				//Return a solid wall or any semi solid walls that are below the player
				if _listInst.object_index == oWall
				|| object_is_ancestor( _listInst.object_index, oWall )
				|| floor(bbox_bottom) <= ceil( _listInst.bbox_top - _listInst.vsp )
				{
					//Return the "highest" wall object
					if !instance_exists(myFloorPlat)
					|| _listInst.bbox_top + _listInst.vsp <= myFloorPlat.bbox_top + myFloorPlat.vsp
					|| _listInst.bbox_top + _listInst.vsp <= bbox_bottom
					{
						myFloorPlat = _listInst;
					}
				}
			}
		}
		
		//Destroy the DS list to avoid memory leak
		ds_list_destroy(_list);
		
		//One last check to make sure the floor platform is actually below us
		if instance_exists(myFloorPlat) && !place_meeting( x, y + 8, myFloorPlat )
		{
			myFloorPlat = noone;
		}
		
		//Land on the ground platform if there is one
		if instance_exists(myFloorPlat)
		{
			//Scoot up to our wall precisely
			var _subPixel = .5;
			while !place_meeting( x, y + _subPixel, myFloorPlat ) && !place_meeting( x, y, oWall ) { y += _subPixel; };
			//Make sure we don't end up below the top of a semi solid
			if myFloorPlat.object_index == oElevator || object_is_ancestor(myFloorPlat.object_index, oElevator)
			{
				while place_meeting( x, y, myFloorPlat ) { y -= _subPixel; };
			}
			//Floor the y variable
			y = floor(y);
			
			//Collide with the ground
			vsp = 0;
			setOnGround(true);
		}
				
				
			
				//Set if I'm on the ground
				if place_meeting( x, y+1, oWall )
				{
					setOnGround(true);
				}
				if (place_meeting( x, y+1, oConveyor) and !instance_exists(oTextBoxController))
				{
					var _chungus = instance_place(x, y+1, oConveyor)
					if(moveDir == sign(_chungus.image_xscale))
					{
						maxSpeed = 5;
					}
					else
					{
						maxSpeed = 10;
					}
					x += _chungus.conveyorspeed*-sign(_chungus.image_xscale);
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
		
		if(parried)
		{
			while(speedBoostTimer>0)
			{
				speedBoostTimer--;
				break
			}
		}
		
		if(parryCooldown > 0)
		{
			while (parryCooldown > 0)
			{
				parryCooldown--;
				break;
			}
		}
		
		if(speedBoostTimer <= 0)
			{
				parried = false;
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
