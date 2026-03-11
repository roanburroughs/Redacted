keyUp = false;
keyDown = false;
keyLeft = false;
keyRight = false;

//halfwidth = room_width / 2;
halfwidth = view_wport/2;
//halfwidth = oCamera.finalCamX / 2;

pos = 0;
percentage = 0;
heldLimit = 0;

mastervol = 1;
musicvol = 1;
sfxvol = 1;

global.musicvol = 1;
global.sfxvol = 1;

master = instance_create_layer(halfwidth+200, 320, "GUI", oAudioSlider);
instance_create_layer(halfwidth-200, 320, "GUI", oBar);

music = instance_create_layer(halfwidth+200, 440, "GUI", oAudioSlider);
instance_create_layer(halfwidth-200, 440, "GUI", oBar);

sfx = instance_create_layer(halfwidth+200, 560, "GUI", oAudioSlider);
instance_create_layer(halfwidth-200, 560, "GUI", oBar);

sliderarray = [master, music, sfx];
