// Inherit the parent event
event_inherited();

if(instance_exists(oControls))
{
	instance_destroy(oControls);
}
else
{
	if(room=MainMenuRoom)
	{
		x=room_width+300;
		oButtonPlay.x=room_width+300;
		oButtonQuit.x=room_width+300;
		oButtonCredits.x=room_width+300;
		instance_create_layer(room_width/2, room_height/3, "Instances", oControls);
		instance_create_layer(room_width/2, room_height/1.6, "Instances", oButtonBack);
	}
	else
	{
		global.mainMenu = false;
		var _cameraX = camera_get_view_x(view_camera[0])+view_wport/2;
		var _cameraY = camera_get_view_y(view_camera[0])+view_hport/3;
		x=room_width+600;
		oAudioButton.x=_cameraX*4;
		oButtonResume.x=_cameraX*4;
		oButtonQuit.x=_cameraX*4;
		
		instance_create_layer(_cameraX, _cameraY, "UI", oControls);
		instance_create_layer(_cameraX, camera_get_view_y(view_camera[0])+view_hport/1.25, "UI", oButtonBack);
	}
}