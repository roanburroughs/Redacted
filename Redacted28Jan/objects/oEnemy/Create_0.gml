// Inherit the parent event
event_inherited();
state = ENEMYSTATE.WANDER;

vulnerable = false;
paintedcolour=c_red///placeholder

//Enemy Sprites
sprMove = dog_moving
sprTelegraph = dog_leap_ready;
sprAttack = dog_attack;
//sprDie = sEnemy;
//sprHurt = sEnemy;

//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = EnemyWander;
enemyScript[ENEMYSTATE.CHASE] = EnemyChase;
enemyScript[ENEMYSTATE.ATTACK] = EnemyAttack;
enemyScript[ENEMYSTATE.HURT] = EnemyHurt;
enemyScript[ENEMYSTATE.DIE] = EnemyDie;