gamePausedImageSpeed = 0;

keyUp = false;
keyDown = false;
keyLeft = false;
keyRight = false;

//halfwidth = room_width / 2;
//halfwidth = view_wport/2;
halfwidth = camera_get_view_x(view_camera[0])+view_wport/2;
height = camera_get_view_y(view_camera[0]);
//halfwidth = oCamera.finalCamX / 2;

pos = 0;
percentage = 0;
heldLimit = 0;

mastervol = 1;
musicvol = 1;
sfxvol = 1;

global.musicvol = 1;
global.sfxvol = 1;
/*
master = instance_create_layer(halfwidth+200, 320, "GUI", oAudioSlider);
instance_create_layer(halfwidth-200, 320, "GUI", oBar);

music = instance_create_layer(halfwidth+200, 440, "GUI", oAudioSlider);
instance_create_layer(halfwidth-200, 440, "GUI", oBar);

sfx = instance_create_layer(halfwidth+200, 560, "GUI", oAudioSlider);
instance_create_layer(halfwidth-200, 560, "GUI", oBar);*/

master = instance_create_layer(halfwidth+200, height+320, "GUI", oAudioSlider);
masterBar = instance_create_layer(halfwidth-200, height+320, "GUI", oBar);

music = instance_create_layer(halfwidth+200, height+440, "GUI", oAudioSlider);
musicBar = instance_create_layer(halfwidth-200, height+440, "GUI", oBar);

sfx = instance_create_layer(halfwidth+200, height+560, "GUI", oAudioSlider);
sfxBar = instance_create_layer(halfwidth-200, height+560, "GUI", oBar);

sliderarray = [master, music, sfx];
