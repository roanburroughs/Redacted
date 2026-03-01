hsp = 0;
vsp = 0;
target = oPlayer;
reflected = false;
weight = 0;
z = 0;
flash = 0;
flashShader = shWhiteFlash;
uFlash = shader_get_uniform(flashShader, "flash");

hitByAttack = ds_list_create();
hitByEnemyAttack = ds_list_create();