// Inherit the parent event
event_inherited();
state = ENEMYSTATE.WANDER;

createExecuteArea = instance_create_layer(x, y, "Enemies", oExecuteArea);

//Enemy Sprites
sprMove = sEnemyTempWalk;
sprAttack = sEnemyTempAttack;
sprIdle = sEnemyTempIdle;
sprDie = sEnemyTemp;
sprHurt = sEnemyTemp;
sprParried = sEnemyTempParried;
sprStagger = sEnemyTempStagger;

//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = EnemyWander;
enemyScript[ENEMYSTATE.CHASE] = EnemyChase;
enemyScript[ENEMYSTATE.ATTACK] = EnemyAttack;
enemyScript[ENEMYSTATE.HURT] = EnemyHurt;
enemyScript[ENEMYSTATE.DIE] = EnemyDie;
enemyScript[ENEMYSTATE.PARRIED] = EnemyParried;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;
//enemyScript[ENEMYSTATE.STAGGER] = EnemyStagger;

