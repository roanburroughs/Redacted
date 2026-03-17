if(global.gamePaused)
{
	if(point_in_rectangle(mouse_x, mouse_y, oAudioButton.bbox_left, oAudioButton.bbox_top, oAudioButton.bbox_right, oAudioButton.bbox_bottom))
	{
		if(!hoverSound)
		{
			audio_play_sound(soUIHover, 20, false, 0.5)
			hoverSound = true;
		}
		if(mouse_check_button_pressed(mb_left))
		{
			if(!clickSound)
			{
				audio_play_sound(soUIClick, 20, false, 1);
				clickSound = true;
			}
			global.mainMenu = false;
			instance_create_depth(0, 0, -1000, oAudioMenu);	
			//room_goto(VolumeSliderTest);
		}
	}
	else
	{
		hoverSound = false;
	}

}
