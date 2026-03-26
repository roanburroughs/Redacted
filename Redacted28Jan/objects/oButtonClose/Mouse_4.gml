// Inherit the parent event
event_inherited();
if(instance_exists(oTutorialTrigger))
{
	instance_destroy(oTutorialTrigger);
}
global.tutorial = false;
global.gamePaused = false;