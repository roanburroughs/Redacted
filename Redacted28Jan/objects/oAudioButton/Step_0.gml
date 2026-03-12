if(global.gamePaused)
{
	if(point_in_rectangle(mouse_x, mouse_y, oAudioButton.bbox_left, oAudioButton.bbox_top, oAudioButton.bbox_right, oAudioButton.bbox_bottom))
	{
		if(mouse_check_button_pressed(mb_left))
		{
			global.mainMenu = false;
			instance_create_depth(0, 0, -1000, oAudioMenu);	
			//room_goto(VolumeSliderTest);
		}
	}

}
