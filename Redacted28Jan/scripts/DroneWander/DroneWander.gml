function DroneWander(){
sprite_index = sprMove;
EnemyCollision();
var _hover = sin(timer * hoverspeed)*hoverlength;

enemySpeed = 0.75;
grav = 0;
vsp = 0;
hoverspeed = 0.03;
hoverlength = 0.5;
timer++;

//At destination or given up
if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed)
{
	image_speed = 0.0;
	searching = true;
	hsp = 0;
	vsp = 0 + _hover;
	//End our move animation
	if(searching)
	{
		//image_speed = 0.0;
		//image_index = 0;
	}
	
	//Set new target destination
	if (++wait >= waitDuration)
	{
		_ease = 0;
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
	searching = false;
	image_speed = 1.0;
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	var _speedThisFrame = enemySpeed;
	if _distanceToGo < enemySpeed
	{
		_speedThisFrame = _distanceToGo;
	}
	dir = point_direction(x, y, xTo, yTo);
	hsp = lengthdir_x(_speedThisFrame, dir);
	vsp = lengthdir_y(_speedThisFrame, dir) + _hover;
	if (hsp != 0)
	{
		//image_xscale = sign(-hsp);
	}
}
	
	if(hsp = 0)
	{
		sprite_index = sprMove;
	}
	

/*if(((hsp > -0.25) && (hsp < 0.25)) && (vsp < 0))
{
	image_index = 7;
}*/

	
	//Check for aggro
	if (++aggroCheck >= aggroCheckDuration)
	{
		aggroCheck = 0;
		if (instance_exists(oPlayer)) && (point_distance(x, y, oPlayer.x, oPlayer.y) <= enemyAggroRadius)
		{
			state = ENEMYSTATE.DRONE_CHASE;
			target = oPlayer;
		}
	}
}