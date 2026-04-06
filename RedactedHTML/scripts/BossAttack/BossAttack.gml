function BossAttack(){
	
	image_speed = 0;
	
	var _startX = xstart;
	var _startY = ystart;
	var _sideFrom = ((oPlayer.x) - (x));
	
	
	
	//dir = point_direction(_startX, _startY, targetX, targetY);
	
	
	if(!findPlayer && !boing) //finds coordinates for slam
	{
		image_xscale = sign(_sideFrom);
		hsp = 0;
		vsp = 0;
		
		_startX = x;
		_startY = y;
		
		//targetX = oPlayer.x;
		targetX = (oPlayer.x)+(50*-sign(_sideFrom))
		dir = point_direction(_startX, _startY, targetX, targetY);
		time_source_start(_move);
	}
	
	if(findPlayer && !prepCharge && !chargeStart) //moves above player
	{	
		//sprite_index = sprSlam
		//image_index = 0;
		
		image_index = 0;
		hsp = lengthdir_x(20, dir)
		vsp = -6
		
		if(sign(hsp) = -1)
		{
			if(x<=targetX)
			{
				hsp = 0;
				vsp = 0;
				grav = 0;
				findPlayer = false;
				slamStart = true;
			}
		}
		if(sign(hsp) = 1)
		{
			if(x>=targetX)
			{
				hsp = 0;
				vsp = 0;
				grav = 0;
				findPlayer = false;
				slamStart = true;
			}
		}
	}
	
	if(!findPlayer && slamStart && !prepCharge && !chargeStart) //stops to telegraph slam
	{
		grav = -0.05;
		time_source_start(_beginSlam);
	}
	
	if(slamStart && onGround) //slams and stops when hits the floor
	{
		vsp = 0;
		//grav = 0.275;
		slamStart = false;
		image_index = 1;
		time_source_start(_prepCharge);
	}
	
	if(prepCharge && !chargeStart) //finds coordinates for charge
	{
		//sprite_index = sprCharge;
		//image_index = 0;
		
		image_index = 2;
		_startX = x;
		_startY = y;
		dir = point_direction(_startX, _startY, targetX, y);
		targetX = (oPlayer.x)+(100*sign(_sideFrom));
		time_source_start(_beginCharge)
	}
	
	if(!prepCharge && chargeStart) //charges at player
	{
		//image_index = 1;
		image_index = 3;
		hsp = lengthdir_x(15, dir);
		//ProcessEnemyAttack(id, 7, 10, 2, 0.01, 0, sBossCharge, sBossCharge_HB);
		//hsp = 15*-sign(dir)
		
		if(sign(hsp) = -1)
		{
			if(x<=targetX)
			{
				//sprite_index = sprIdle;
				image_index = 4;
				hsp = 0;
				vsp = 0;
				//grav = 0;
				chargeStart = false;
				time_source_start(_reset); //resets boss loop
			}
		}
		if(sign(hsp) = 1)
		{
			if(x>=targetX)
			{
				//sprite_index = sprIdle;
				image_index = 4;
				hsp = 0;
				vsp = 0;
				//grav = 0;
				chargeStart = false;
				time_source_start(_reset); //resets boss loop
			}
		}
	}
	
	ProcessEnemyAttack(id, 7, 10, 2, 0.01, 0, sBossAttack2, sBossAttack2_HB);
	ProcessEnemyAttack(id, 7, 10, 2, 0.01, 0, sBossAttack2, sBossAttack2_HB2);
	
	if (floor(image_index) == 4)
		{
			hsp = 0;
			//enemySpeed = 2.75;
			stateTarget = ENEMYSTATE.ATTACK;
			stateWaitDuration = 60;
			state = ENEMYSTATE.WAIT;
		}

	x += hsp;
	y += vsp;

}