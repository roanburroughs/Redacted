function PlayerStateDash(){
if(framecounter %3=0)
//% gives the remainder of the division
//meaning this if statement is checking if there is a remainder when the framecounter is divided by 3
//if framecounter is a multiple of 3, the remainer is 0 so this is run
//TLDR this statement only runs every 3 frames,running every frame would be too much 
{
		with (instance_create_layer(xprevious + irandom_range(-20,20),y,"Spray",oPaintProjectile))
		{
		vsp=10
		hsp=irandom_range(1*other.face,15*other.face)
		image_xscale=0.75
		image_yscale=0.75
		}
}
	vsp += grv;
	var _freeReady = true;
	show_debug_message(_freeReady)
	//X Movement
	hsp = face * dashSp;
	
	//vsp = -0.01;
	//Get face
	if moveDir != 0
	{
		face = moveDir;
	}
	
	/* uncomment to soar like knuckles the unchuckles
	if (!keyJump) && (!onGround)
	{
		vsp = -0.01;
	}*/
	
	if (keyJump) && (onGround)
	{
		jumpKeyBufferTimer = bufferTime;
		freeReady = false;
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
		hsp = maxSpeed*(2.5*face);
		vsp = vspJump;
		//Count down the timer
		jumpHoldTimer--;
	}
	
	if (keyPressed_heavyAttack && keyDown && !onGround)
	{
		canDash=false
		alarm[0]=dashcooldown
		state = PlayerStateAttack;
		stateAttack = HeavyDownAir;
	}
	
	if(keyJump) && (!onGround) && (atWall)
		{
			canDash = false;
			alarm[0] = dashcooldown;
			face = -face; //Turns player away from the wall
			wallJumping = true;
			wallJumpLock = 0;
			hsp = lerp((-onwall * hsp_wallJump), 0, 0);
			vsp = vspJump;
			state = PlayerStateFree;
		}
	
	
	//Dash sprite
	sprite_index = dashSpr;
	
	//Ending
	dashEnergy -= dashSp;
	if (dashEnergy <= 0) && (freeReady)
	{
		vsp = 0;
		hsp = 0;
		canDash=false
		alarm[0]=dashcooldown
		state = PlayerStateFree;
	}
}