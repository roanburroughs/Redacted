// Inherit the parent event
event_inherited();
state = ENEMYSTATE.IDLE;

inRange = false;
fireCount = 0;

//Enemy Sprites
sprIdle = sTempRangedEnemyIdle;
sprShoot = sTempRangedEnemyShoot;
sprHurt = sTempRangedEnemyHurt;

//Enemy Scripts
enemyScript[ENEMYSTATE.IDLE] = EnemyIdle;
enemyScript[ENEMYSTATE.HURT] = EnemyHurt;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;
enemyScript[ENEMYSTATE.ATTACK] = RangedEnemyAttack;
enemyScript[ENEMYSTATE.DIE] = EnemyDie;

