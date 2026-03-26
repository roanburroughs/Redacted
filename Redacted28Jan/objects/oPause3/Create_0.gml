gamePausedImageSpeed = 0;
audioButton = 0
audioButtonGUI = 0; //separate instance drawn through GUI so it doesn't get affected by the pause screen dim
backButton = 0;
controlsButton = 0;
resumeButton = 0;
quitButton = 0;

buttonX = 0;
buttonY = 0;

pauseSound = false;
tutorialTrigger = 0;
inTutorial = false;
alpha = 0;
timer = 0;
fadespeed = 0.03;
fadelength = 0.06;

volStruct =
{
	_master : 0,
	_music : 0,
	_sfx : 0
}

mainMenu = true;

global.mainMenu = true;
global.audioSettings = false;
global.tutorial = false;