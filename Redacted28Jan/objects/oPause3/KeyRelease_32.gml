
if(inTutorial)
{
	if(instance_exists(oTutorialTrigger))
	{
		instance_destroy(oTutorialTrigger);
	}
	global.tutorial = false;
	global.gamePaused = false;
}

if(inInfo)
{
	if(instance_exists(oStoryTrigger4))
	{
		instance_destroy(oStoryTrigger4);
	}
	global.info = false;
	global.gamePaused = false;
}