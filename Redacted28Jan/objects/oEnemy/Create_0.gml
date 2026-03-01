// Inherit the parent event
event_inherited();
state = ENEMYSTATE.WANDER;

vulnerable = false;
paintedcolour=c_red///placeholder

fall = 0;
leap = 0;

//Enemy Sprites
sprMove = sDogIdle
sprAttack = sDogAttack;
sprIdle = sDogIdle;
//sprDie = sEnemy;
sprHurt = sDogHurt;
sprStagger = sDogStagger

//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = EnemyWander;
enemyScript[ENEMYSTATE.CHASE] = EnemyChase;
enemyScript[ENEMYSTATE.ATTACK] = EnemyAttack;
enemyScript[ENEMYSTATE.HURT] = EnemyHurt;
enemyScript[ENEMYSTATE.DIE] = EnemyDie;