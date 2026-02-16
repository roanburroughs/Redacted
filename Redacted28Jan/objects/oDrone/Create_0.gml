// Inherit the parent event
event_inherited();
state = ENEMYSTATE.DRONE_WANDER;

//Hover Variables
timer = 0;
hoverspeed = 0;
hoverlength = 0;

searching = false;
frames = 0;

//EnemySprites
sprIdle = sEnemyDrone;
sprMove = sEnemyDrone;
sprHurt = sEnemyDroneHurt;

//Enemy Scripts
//enemyScript[ENEMYSTATE.DRONE_IDLE] = EnemyWander;
enemyScript[ENEMYSTATE.DRONE_WANDER] = DroneWander;
enemyScript[ENEMYSTATE.DRONE_CHASE] = DroneChase;
enemyScript[ENEMYSTATE.HURT] = EnemyHurt;
enemyScript[ENEMYSTATE.DRONE_WAIT] = EnemyWait;
enemyScript[ENEMYSTATE.DRONE_DIE] = DroneDie;