function PlayerStateFree(){

//X Movement
		//Direction
		moveDir = keyRight - keyLeft;
	
		//Get my face
		if moveDir != 0 { face = moveDir; };
		
		//Get hsp
		hsp = moveDir * moveSpd;


	
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
	if (canJump-- > 0) && (keyJump)
	{
		vsp = vspJump;
		canJump = 0;
	}

else if(vsp!=0 and keyJump and candoublejump and !doublejumping)
{
alarm[1]=30
doublejumping=true
}
 if(doublejumping)
 {
	 PlayerDoubleJump()
 
 }



if(vsp=0) candoublejump=true

	
	//Can we dash?
	if (canDash) && (keyDash)
	{
		canDash = false;
		canJump = 0;
		//dashDirection = point_direction(0, 0, keyRight-keyRight, keyRight-keyRight);
		//dashDirection = moveDir;
		dashSp = dashDistance/dashTime;
		dashEnergy = dashDistance;
		state = PlayerStateDash;
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
	
	if(keyPressed_heavyAttack && executeReady)
	{
		state = PlayerStateAttack;
		stateAttack = Execute;
		executing = true;
	}
	
	if (keyPressed_Poise)
	{	
		state = PlayerStatePoise;
	}
	
	
	if(keySpray) 
	{
	PlayerAttack_Spray()	
	}
	else instance_destroy(oSpray1)
	
}