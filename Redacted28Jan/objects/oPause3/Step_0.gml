if(global.gamePaused)
{
	if(!pauseSound)
	{
		audio_play_sound(soPause, 20, false, 1);
		pauseSound = true;
	}
	if(!instance_exists(oAudioButton))
	{
		var _bluh = camera_get_view_x(view_camera[0])+view_wport/2;
		var _bleh = camera_get_view_y(view_camera[0])+view_hport/2.5;
		audioButton = instance_create_depth(_bluh, _bleh, -2000, oAudioButton, volStruct);
		audioButtonGUI = instance_create_depth(view_wport/2, view_hport/2.5, -1000, oAudioButton);
		//audioButton = instance_create_depth(oPlayer.x, oPlayer.y, -1000, oAudioButton);
		//audioButton = instance_create_depth(oCamera.finalCamX, oCamera.finalCamY, -1000, oAudioButton);
	}
}

if(!global.gamePaused)
{
	pauseSound = false;
}

if(!global.gamePaused || instance_exists(oAudioMenu))
{
	instance_destroy(audioButton);
	instance_destroy(audioButtonGUI);
}
//show_debug_message(global.mainMenu)
