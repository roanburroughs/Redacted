EnemyList = ds_list_create();
//gate = 0;
gate = instance_nearest(x, y, oEnemyGate);

enemiesActive = false;
enemiesDead = false;

gateX = x+gateXOffset; //variables for creating new gates in certain locations
gateY = y+gateYOffset; //not being used rn because it's pretty trial and error for getting the gate where you want
					   //keeping rn in case i find a use for it later
