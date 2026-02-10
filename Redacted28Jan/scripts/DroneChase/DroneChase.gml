function DroneChase(){

EnemyCollision();

if (instance_exists(target))
{
	xTo = target.x;
	yTo = target.y;
	
	
	
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	image_speed = 1.0;
	dir = point_direction(x, y, xTo, yTo);
	if (_distanceToGo > enemySpeed)
	{
		hsp = lengthdir_x(enemySpeed, dir);
		vsp = lengthdir_y(enemySpeed, dir); //better for flying enemies
	}
	else
	{
		hsp = lengthdir_x(_distanceToGo, dir);
		vsp = lengthdir_y(_distanceToGo, dir); //better for flying enemies
	}
	if (hsp != 0) image_xscale = sign(-hsp);

}

}