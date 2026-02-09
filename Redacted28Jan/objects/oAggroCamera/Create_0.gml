 // Inherit the parent event
event_inherited();
visiondistance=900
state = ENEMYSTATE.IDLE;

createExecuteArea = instance_create_layer(x, y, "Enemies", oExecuteArea);

//Enemy Sprites
/*
sprMove = sEnemyTempWalk;
sprAttack = sEnemyTempAttack;
sprIdle = sEnemyTempIdle;
sprDie = sEnemyTemp;
sprHurt = sEnemyTemp;
sprParried = sEnemyTempParried;
*/

//Enemy Scripts

enemyScript[ENEMYSTATE.IDLE] = AggroCameraIdle
enemyScript[ENEMYSTATE.STAGGER] = EnemyStagger;

enemyScript[ENEMYSTATE.DIE] = EnemyDie;
/*
enemyScript[ENEMYSTATE.WANDER] = EnemyWander;
enemyScript[ENEMYSTATE.CHASE] = EnemyChase;
enemyScript[ENEMYSTATE.ATTACK] = EnemyAttack;
enemyScript[ENEMYSTATE.HURT] = EnemyHurt;
enemyScript[ENEMYSTATE.DIE] = EnemyDie;
enemyScript[ENEMYSTATE.PARRIED] = EnemyParried;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;
enemyScript[ENEMYSTATE.STAGGER] = EnemyStagger;

