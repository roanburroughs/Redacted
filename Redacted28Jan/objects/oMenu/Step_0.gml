keyRight = keyboard_check(vk_right);
keyLeft = keyboard_check(vk_left);
keyDown = keyboard_check_pressed(vk_down);
keyUp = keyboard_check_pressed(vk_up);

if (keyUp) pos --;
if (keyDown) pos ++;

if (pos < 0) pos = 2;
if (pos > 2) pos = 0;

global.musicvol = musicvol * mastervol;
global.sfxvol = sfxvol * mastervol;

audio_group_set_gain(ag_music, global.musicvol, 0);
audio_group_set_gain(ag_sfx, global.sfxvol, 0);