function EnemyChase(){
sprite_index = sprMove;
//audio_play_sound(DogAlert,10,false,1)

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
		//vsp = lengthdir_y(enemySpeed, dir); //better for flying enemies
	}
	else
	{
		hsp = lengthdir_x(_distanceToGo, dir);
		//vsp = lengthdir_y(_distanceToGo, dir); //better for flying enemies
	}
	if (hsp != 0) image_xscale = sign(-hsp);

}

//Check if close enough to launch an attack
 //commented out because there's no current enemy attack animation
if (instance_exists(target)) && (point_distance(x, y, target.x, target.y) <= enemyAttackRadius)
{
	if(object_index = oEnemyTemp)
	{
		stateEnemyAttack = WolfAttack;
	}
	if(object_index = oEnemy)
	{
		stateEnemyAttack = DogAttack;
	}
	state = ENEMYSTATE.ATTACK;
	sprite_index = sprAttack;
	image_index = 0;
	image_speed = 1.0;
	//target 8px past the player
	//xTo += lengthdir_x(8, dir);
	//yTo += lengthdir_y(8, dir);
}

}