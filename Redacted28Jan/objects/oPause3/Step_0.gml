buttonX = camera_get_view_x(view_camera[0])+view_wport/2;
//cameraY = camera_get_view_y(view_camera[0])+view_hport/2.5;

if(global.gamePaused && global.mainMenu)
{
	if(!pauseSound)
	{
		audio_play_sound(soPause, 20, false, 1);
		pauseSound = true;
	}
	if(!instance_exists(oAudioButton))
	{
		var _buttonY = camera_get_view_y(view_camera[0])+view_hport/2.5;
		audioButton = instance_create_depth(buttonX, _buttonY, -2000, oAudioButton, volStruct);
		//audioButtonGUI = instance_create_depth(view_wport/2, view_hport/2.5, -1000, oAudioButton);
		//audioButton = instance_create_depth(oPlayer.x, oPlayer.y, -1000, oAudioButton);
		//audioButton = instance_create_depth(oCamera.finalCamX, oCamera.finalCamY, -1000, oAudioButton);
	}
	if(!instance_exists(oButtonControls))
	{
		var _buttonY = camera_get_view_y(view_camera[0])+view_hport/2;
		controlsButton = instance_create_depth(buttonX, _buttonY, -2000, oButtonControls);
	}
	
	if(!instance_exists(oButtonResume))
	{
		var _buttonY = camera_get_view_y(view_camera[0])+view_hport/1.65;
		resumeButton = instance_create_depth(buttonX, _buttonY, -2000, oButtonResume);
	}
	
	if(!instance_exists(oButtonQuit))
	{
		var _buttonY = camera_get_view_y(view_camera[0])+view_hport/1.4;
		quitButton = instance_create_depth(buttonX, _buttonY, -2000, oButtonQuit);
	}
}

if(global.tutorial)
{
	inTutorial = true;
	if(!instance_exists(oButtonClose))
	{
		var _buttonY = camera_get_view_y(view_camera[0])+view_hport/1.1;
		resumeButton = instance_create_depth(buttonX, _buttonY, -2000, oButtonClose);
	}
}
else
{
	inTutorial = false;
}

if(global.info)
{
	inInfo = true;
}
else
{
	inInfo = false;
}

if(!global.gamePaused)
{
	pauseSound = false;
}

if(instance_exists(oAudioMenu))
{
	var _offScreenX = camera_get_view_x(view_camera[0])+view_wport+300;
	audioButton.x= _offScreenX;
	//audioButtonGUI.x = _offScreenX;
	controlsButton.x = _offScreenX;
	resumeButton.x = _offScreenX;
	quitButton.x = _offScreenX;
}
/*
if(!global.gamePaused || instance_exists(oAudioMenu))
{
	instance_destroy(audioButton);
	instance_destroy(audioButtonGUI);
	instance_destroy(controlsButton);
	instance_destroy(resumeButton);
	instance_destroy(quitButton);
}
*/

if(!global.gamePaused)
{
	instance_destroy(audioButton);
	//instance_destroy(audioButtonGUI);
	instance_destroy(controlsButton);
	instance_destroy(resumeButton);
	instance_destroy(quitButton);
}

timer++;
alpha += sin(timer * fadespeed)*fadelength;
