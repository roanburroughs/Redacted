// Inherit the parent event
event_inherited();

if(instance_exists(oControls))
{
	instance_destroy(oControls);
	instance_destroy();
}