/// @description ?
keyUp = false;
keyDown = false;
keyLeft = false;
keyRight = false;

halfwidth = room_width / 2;
//halfwidth = oCamera.finalCamX / 2;

pos = 0;

mastervol = 1;
musicvol = 1;
sfxvol = 1;

global.musicvol = 1;
global.sfxvol = 1;

audio_group_load(ag_music);
audio_group_load(ag_sfx);