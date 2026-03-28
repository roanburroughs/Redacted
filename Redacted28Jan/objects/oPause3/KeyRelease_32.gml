if(inTutorial)
{
	if(instance_exists(tutorialTrigger))
	{
		instance_destroy(tutorialTrigger);
	}
	global.tutorial = false;
	global.gamePaused = false;
}