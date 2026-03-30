framecounter=0
 // Inherit the parent event
 event_inherited();
grv=0
 //onofftime = 5 //time the camera is on and off
//visiondistance=900
state = ENEMYSTATE.IDLE;
active=true
createExecuteArea = instance_create_layer(x, y, "Enemies", oExecuteArea);
vsp=0

playerSpotted = false;
blup = false;

//Enemy Scripts
enemyScript[ENEMYSTATE.IDLE] = AggroCameraIdle
//enemyScript[ENEMYSTATE.STAGGER] = EnemyStagger;

enemyScript[ENEMYSTATE.DIE] = EnemyDie;


