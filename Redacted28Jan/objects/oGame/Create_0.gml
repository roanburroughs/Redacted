/// @desc globals
//randomize();

global.gamePaused = false;
global.graffitiCounter = 0;
graffitiCounter = 0;
activeGraffiti = 0;
graffitiList = ds_list_create();

button = 0;

audio_group_load(ag_music);
audio_group_load(ag_sfx);