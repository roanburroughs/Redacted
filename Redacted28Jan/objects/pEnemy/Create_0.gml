	// Inherit the parent event
event_inherited();
paintedcolour=c_white

function onFloorCheck(_val = true)
{
	if _val = true
	{
		onGround = true;
	}
	else
	{
		onGround = false;
	}
}

//Intrinsic variables
state = ENEMYSTATE.IDLE;
stateEnemyAttack = WolfAttack;
hsp = 0;
vsp = 0;
grav = .275;

xTo = xstart;
yTo = ystart;
target = 0;
hspKnock = 0;
vspKnock = 0;
hspAirtime = 0;
vspAirtime = 0;
dir = 0;
timePassed = 0;
waitDuration = 60;
wait = 0;
aggroCheck = 0;
aggroCheckDuration = 5;
stateTarget = state;
statePrevious = state;
stateWait = 0;
stateWaitDuration = 0;

weight = 0;
hitstun = 0;

onGround = true;

//Combat Variables
hitByEnemyAttack = ds_list_create();
parried = false;
parryTimer = 0;
parryDuration = 60;
staggered = false;
staggerTimer = 0;
staggerDuration = 180;

//Enemy Functions
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.PARRIED] = EnemyParried;
//enemyScript[ENEMYSTATE.STAGGER] = EnemyStagger;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

//enemyScript[ENEMYSTATE.DRONE_WANDER] = -1;
//enemyScript[ENEMYSTATE.DRONE_DIE] = DroneDie;
