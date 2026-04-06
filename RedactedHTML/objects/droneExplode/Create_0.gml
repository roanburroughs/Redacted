sprite_index = sEnemyDroneBoom;
mask_index = sEnemyDroneBoom_HB;

paintedcolour=c_white
hitByExplosion = ds_list_create();

boom = soDroneExplode;
audio_play_sound(soDroneExplode, 5, false, 0.4, 0, 1);