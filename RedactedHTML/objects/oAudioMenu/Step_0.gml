keyRight = keyboard_check(vk_right) + gamepad_button_check_pressed(4, gp_padr);
keyLeft = keyboard_check(vk_left) + gamepad_button_check_pressed(4, gp_padl);
keyDown = keyboard_check_pressed(vk_down) + gamepad_button_check_pressed( 4, gp_padd )
keyUp = keyboard_check_pressed(vk_up) + gamepad_button_check_pressed( 4, gp_padu );

if (keyUp) pos --;
if (keyDown) pos ++;

if (pos < 0) pos = 2;
if (pos > 2) pos = 0;

mastervol = master.percentage;
musicvol = music.percentage;
sfxvol = sfx.percentage;



if(master.held = true || music.held = true || sfx.held = true)
{
	heldLimit = 1;
}
else
{
	heldLimit = 0;
}

if(master.held)
{
	pos = 0;
}

if(music.held)
{
	pos = 1;
}

if(sfx.held)
{
	pos = 2;
}

global.musicvol = musicvol * mastervol;
global.sfxvol = sfxvol * mastervol;

audio_group_set_gain(ag_music, global.musicvol, 0);
audio_group_set_gain(ag_sfx, global.sfxvol, 0);

if(keyboard_check_released(vk_escape))
{
	global.audioSettings = false;
	//global.mainMenu = true;
	//instance_destroy();
}

if(global.audioSettings = false)
{
	global.mainMenu = true;
	instance_destroy();
}