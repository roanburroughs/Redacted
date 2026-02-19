function EnemyWander(){
if(object_index = oEnemy)
{
	sprite_index = dog_moving;
}

if(object_index = oEnemyTemp)
{
	sprite_index = sprMove;
}

//At destination or given up
if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed)
{
	hsp = 0;
	//vsp = 0; again, useful when enabled for flying enemies
	//End our move animation
	if(image_index < 1)
	{
		//image_speed = 0.0;
		//image_index = 0;
	}
	
	//Set new target destination
	if (++wait >= waitDuration)
	{
		wait = 0;
		timePassed = 0;
		dir = point_direction(x, y, xstart, ystart) + irandom_range(-65, 65);
		xTo = x + lengthdir_x(enemyWanderDistance, dir);
		yTo = y + lengthdir_y(enemyWanderDistance, dir);
	}
}
else //Move towards new destination
{
	timePassed++;
	image_speed = 1.0;
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	var _speedThisFrame = enemySpeed;
	if _distanceToGo < enemySpeed
	{
		_speedThisFrame = _distanceToGo;
	}
	dir = point_direction(x, y, xTo, yTo);
	hsp = lengthdir_x(_speedThisFrame, dir);
	//vsp = lengthdir_y(_speedThisFrame, dir); Commented out for enemies on the ground - enemies that hover in the air could use this
	if (hsp != 0)
	{
		if(hsp>0)
		{
			image_xscale = -1
		}
		else
		{
			image_xscale = 1
		}
	}
	if (hsp != 0)
	{
		image_xscale = sign(-hsp);
	}
}

if(hsp = 0 && object_index = oEnemyTemp)
	{
		sprite_index = sprIdle;
	}

	
	//Collide & Move
	//X Collision
	var _subPixel = .5;
		if place_meeting(x + hsp, y, oWall)
		{
			var _pixelCheck = _subPixel * sign(hsp);
			while !place_meeting(x + _pixelCheck, y, oWall)
			{
				x += _pixelCheck;
			}

			//Set hsp to zero to collide
			hsp = 0;
		}

	x += hsp;
	
	//Apply gravity
	vsp += grav;
	/* adding this makes the enemy plummet through the ground, and must remain in comment jail for the time being
	if vsp < 0 && place_meeting( x, y + vsp, oWall )
			{
				//Scoot up to the wall precisely
				var _pixelCheck = _subPixel * sign(vsp);
				while !place_meeting( x, y + _pixelCheck, oWall)
				{
					y += _pixelCheck;
				}
			}
			
			//Set vsp to 0 to collide
			vsp = 0;*/
			
	if vsp >= 0
		{
			if place_meeting( x, y + vsp, oWall )
			{
				//Scoot up to the wall precisely
				var _pixelCheck = _subPixel * sign(vsp);
				while !place_meeting( x, y + _pixelCheck, oWall )
				{
					y += _pixelCheck;
				}
				//Set vsp to 0 to collide
				vsp = 0;
				
			}
		}
		
	//Move
	y += vsp;
	
	//Check for aggro
	if (++aggroCheck >= aggroCheckDuration)
	{
		aggroCheck = 0;
		if (instance_exists(oPlayer)) && (point_distance(x, y, oPlayer.x, oPlayer.y) <= enemyAggroRadius)
		{
		if(!audio_is_playing(DogMove))	audio_play_sound(DogMove,10,true,1)
			state = ENEMYSTATE.CHASE;
			target = oPlayer;
		}
	}
}