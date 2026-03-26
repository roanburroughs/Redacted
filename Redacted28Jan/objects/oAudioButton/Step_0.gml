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
			global.audioSettings = true;
			instance_create_depth(0, 0, -1000, oAudioMenu);
			instance_create_depth(camera_get_view_x(view_camera[0])+view_wport/2, camera_get_view_y(view_camera[0])+view_hport/1.5, -1000, oButtonBack);
			//room_goto(VolumeSliderTest);
		}
	}
	else
	{
		hoverSound = false;
	}

}
