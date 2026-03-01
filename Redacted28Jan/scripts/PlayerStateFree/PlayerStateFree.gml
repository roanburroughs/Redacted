function PlayerStateFree(){

//X Movement
		//Direction
		if(!wallJumping)
		{
			moveDir = keyRight - keyLeft;
			
			
		
	//Accel and Decel	use lerps so 0 does nothing, 1 is instant max speed 
   var _deceleration=0.1 //how fast do we stop
   var _acceleration =0.1//0.025 //how fast do we speed up
   var _maxwalkspeed=10
    //var move = keyRight - keyLeft;
	
	hsp = lerp(hsp,(maxSpeed*moveDir),acceleration);
  /* if(keyRight)
   {
	 //hsp=lerp(hsp,maxwalkspeed,acceleration)
	 hsp=lerp(hsp,maxSpeed,acceleration)
   }
   
   if(keyLeft)
   {
	//hsp=lerp(hsp,-maxwalkspeed,acceleration)
	hsp=lerp(hsp,-maxSpeed,acceleration)
   }
   if(	(!keyLeft and !keyRight) or (keyRight and keyLeft)	)
   {
	hsp= lerp(hsp,0,deceleration)   
	if(hsp<1 and hsp>-1) hsp=0
   }*/
   if(moveDir = 0)
   {
	   hsp= lerp(hsp,0,deceleration)   
	if(hsp<1 and hsp>-1) hsp=0
   }
   
   
   /*
if(   hsp>0 ) moveDir= 1
   
if(   hsp<0 ) moveDir= -1
   
			
			
	*/		
			
			
			
			
			
			
			
			
			
		}
		else
		{
			moveDir = 0;
		}
		//Get my face
		if moveDir != 0 { face = moveDir; };
		
		//Get hsp
		if(!wallJumping)
		{
	//	hsp = moveDir * moveSpd;
		}
		
		
		//Walljump
		if(keyJump) && (!onGround) && (atWall)
		{
			face = -face; //Turns player away from the wall
			wallJumping = true;
			wallJumpLock = 0;
			hsp = lerp((-onwall * hsp_wallJump), 0, 0);
			vsp = vspJump;
		}
		
		
		
	
var inst = instance_nearest(x + hsp, y, oPaintedFloor) //interact with only this painted floor

if (inst != noone)
{
    if (inst.image_angle != 0 and inst.image_angle != 180 and inst.image_blend!=c_white and place_meeting(x+hsp,y,inst))
    {
        if (vsp > 0)
        {
            canJump = 10;
            // canDash = true;
        }
		if(keyJump)
		{
		//hsp+=50*face*-1	 
		}
    }
}
	//Can we jump?
	/*if (onGround) && (keyJump)
	{
		vsp = vspJump;
		canJump = 0;
	}*/
	onwall = place_meeting(x+1, y, oWall) - place_meeting(x-1, y, oWall);
	
	//Jump key buffering
	
	if keyJump
	{
		jumpKeyBufferTimer = bufferTime;
	}
	if jumpKeyBufferTimer > 0
	{
		jumpKeyBuffered = 1;
		jumpKeyBufferTimer--;
	}
	else
	{
		jumpKeyBuffered = 0;
	}
	
		//Initiate the jump
	if jumpKeyBuffered && jumpCount < jumpMax
	{
		//Reset the buffer
		jumpKeyBuffered = false;
		jumpKeyBufferTimer = 0;
		//Increase the number of performed jumps
		if(!atWall)
		{
		jumpCount++;
		}
		//Set the jump hold timer
		//jumpHoldTimer = jumpHoldFrames[jumpCount-1];
		jumpHoldTimer = jumpHoldFrames;
		//Tell ourself we're no longer on the ground
		setOnGround(false);
	}
	
		//Cut off the jump by releasing the jump button
	if !key_jump_held
	{
		jumpHoldTimer = 0;
	}
	//Jump based on the timer/holding the button
	if jumpHoldTimer > 0
	{
		//Constantly set the vsp to be jumping speed
		//vsp = jspd[jumpCount-1];
		vsp = vspJump;
		//Count down the timer
		jumpHoldTimer--;
	}
	

/*
else if(vsp!=0 and keyJump and candoublejump and !doublejumping)
{
alarm[1]=30
doublejumping=true
}
 if(doublejumping)
 {
	 PlayerDoubleJump()
 
 }*/
 

if(jumpCount==2) && (keyJump) && (candoublejump) && (!doublejumping)
{
	alarm[1] = 30
	doublejumping = true
}
if(doublejumping)
{
	PlayerDoubleJump()
}





//if(vsp=0) candoublejump=true
if(onGround) candoublejump=true

	
	//Can we dash?
	if (canDash) && (keyDash)
	{
		canDash = false;
		canJump = 0;
		//dashDirection = point_direction(0, 0, keyRight-keyRight, keyRight-keyRight);
		//dashDirection = moveDir;
		dashSp = dashDistance/dashTime;
		dashEnergy = dashDistance;
		if(!onGround)
		{
			freeReady = false;
		}
		state = PlayerStateDash;
		//PlayerDash();
	}
	
	

//collision was here
	
	//Change sprite when moving

if(doublejumping)
{
	sprite_index=doublejumpchargeSpr
}
else if(!candoublejump)
{
sprite_index=doublejumpSpr	
}
else	if(vsp>0)
	{
		sprite_index = fallSpr;
	}
	
	else if(vsp<0)
	{
		sprite_index = riseSpr;
	}
	
	else if abs(hsp) > 0
	{
		sprite_index = freeSpr;
	}
	else if hsp == 0
	{
		sprite_index = idleSpr;
	}
	
	//Change to dash state
	if (keyPressed_lightAttack && !keyPressed_Poise)
	{
		state = PlayerStateAttack;
		if(onGround)
		{
		stateAttack = LAttack;
		}
		else
		{
		stateAttack = JAttack;
		}
	}
	
	if (keyPressed_heavyAttack && keyDown && !onGround)
	{
		state = PlayerStateAttack;
		stateAttack = HeavyDownAir;
	}
	//
	if(keyPressed_heavyAttack && executeReady)
	{
		//state = PlayerStateAttack;
		//stateAttack = Execute;
		//executing = true;
	}
 
	//Ranged
	if(keyPressed_heavyAttack && !executeReady)
	{
		//state = PlayerStateRangedAttack;
		
		
		 if(vsp>1 or vsp<-1)
		{
			//stateAttack=AirRangedAttack
		}
		else if(hsp>1 or hsp<-1)
		{
			//stateAttack=MovingRangedAttack
		}
		else
		{
			//show_message("RANGED")
			//stateAttack=RangedAttack
		}
	 
	}
	
	
	if(keySpray) 
	{
	PlayerAttack_Spray()	
	}
	else instance_destroy(oSpray1)
	
}