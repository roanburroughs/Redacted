if(room=MainMenuRoom)
{
	oButtonPlay.x = room_width/2;
	oButtonControls.x = room_width/2;
	oButtonQuit.x = room_width/2;
	oButtonCredits.x = room_width/2;
}
else
{
	if(global.audioSettings = false)
	{
		global.mainMenu = true;
		oAudioButton.x = camera_get_view_x(view_camera[0])+view_wport/2;
		oButtonControls.x = camera_get_view_x(view_camera[0])+view_wport/2;
		oButtonResume.x = camera_get_view_x(view_camera[0])+view_wport/2;
		oButtonQuit.x = camera_get_view_x(view_camera[0])+view_wport/2;
	}
}