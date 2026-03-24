event_inherited()

if(enraged) enemySpeed=vdenemyspeed*2
else enemySpeed=vdenemyspeed

EnemyCollision();

//Execute State Machine
if (!global.gamePaused)
{
	if(enemyScript[state] != -1)
	{
		script_execute(enemyScript[state]);
	}
	depth = -bbox_bottom;
	//grav = .275;
}
else
{
	hsp = 0;
	vsp = 0;
	grav = 0;
}

	