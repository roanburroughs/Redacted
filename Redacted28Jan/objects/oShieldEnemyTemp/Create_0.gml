// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

//EnemySprites
sprIdle = sTempShieldEnemyIdle;
sprMove = sTempShieldEnemyWalk;
sprAttack = sTempShieldEnemyAttack;
sprHurt = sTempShieldEnemyWalk;

//EnemyScripts
enemyScript[ENEMYSTATE.WANDER] = EnemyWander;
enemyScript[ENEMYSTATE.CHASE] = EnemyChase;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;
enemyScript[ENEMYSTATE.HURT] = EnemyHurt;
enemyScript[ENEMYSTATE.DIE] = EnemyDie;
enemyScript[ENEMYSTATE.ATTACK] = ShieldEnemyAttack;