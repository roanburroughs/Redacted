// Inherit the parent event
event_inherited();

state = ENEMYSTATE.BOSS_IDLE;

fight = false;
findPlayer = false;
_abovePlayer = false;
targetX = oPlayer.x;
targetY = -20;
startX = 0;
startY = 0;

boing = false;
slamStart = false;
prepCharge = false;
chargeStart = false;

	 _move = time_source_create(time_source_game, 30, time_source_units_frames, function()
	{
		findPlayer = true;
		boing = true;
	}, []);
	
	 _beginSlam = time_source_create(time_source_game, 20, time_source_units_frames, function()
	{
		var _sideFrom = ((oPlayer.x) - (x));
		image_xscale = sign(_sideFrom);
		grav = 0.275
		vsp = 10;
	}, []);
	
	 _prepCharge = time_source_create(time_source_game, 15, time_source_units_frames, function()
	{
		var _sideFrom = ((oPlayer.x) - (x));
		image_xscale = sign(_sideFrom);
		prepCharge = true;
	}, []);
	
	 _beginCharge = time_source_create(time_source_game, 15, time_source_units_frames, function()
	{
		prepCharge = false;
		chargeStart = true;
	}, []);
	
	 _reset = time_source_create(time_source_game, 60, time_source_units_frames, function()
	{
		boing = false;
		findPlayer = false;
		slamStart = false;
		prepCharge = false;
		chargeStart = false;
	}, []);

//Enemy Sprites
sprIdle = sBossIdle;
sprSlam = sBossSlam;
sprCharge = sBossCharge;
sprHurt = sBossIdle;
sprStagger = sBossIdle;

enemyScript[ENEMYSTATE.BOSS_IDLE] = BossIdle;
enemyScript[ENEMYSTATE.ATTACK] = BossAttack;
enemyScript[ENEMYSTATE.HURT] = EnemyHurt;
enemyScript[ENEMYSTATE.DIE] = EnemyDie;