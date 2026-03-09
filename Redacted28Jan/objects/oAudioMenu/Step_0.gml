keyRight = keyboard_check(vk_right);
keyLeft = keyboard_check(vk_left);
keyDown = keyboard_check_pressed(vk_down);
keyUp = keyboard_check_pressed(vk_up);

if (keyUp) pos --;
if (keyDown) pos ++;

if (pos < 0) pos = 2;
if (pos > 2) pos = 0;

mastervol = master.percentage;
musicvol = music.percentage;
sfxvol = sfx.percentage;

for(var i = 0; i<3; i++)
{
	with(sliderarray[i])
	{
		if(mouse_check_button(mb_left))
		{
			if((mouse_x < x+sprite_width/2) && (mouse_x > x-sprite_width/2) && (mouse_y < y+sprite_height/2) && (mouse_y > y-sprite_height/2))
			{
				if(oAudioMenu.heldLimit == 0)
				{
					held = true;
				}
			}
		}
		else
		{
			held = false;
		}
	}
	
}
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
show_debug_message(heldLimit)

global.musicvol = musicvol * mastervol;
global.sfxvol = sfxvol * mastervol;

audio_group_set_gain(ag_music, global.musicvol, 0);
audio_group_set_gain(ag_sfx, global.sfxvol, 0);