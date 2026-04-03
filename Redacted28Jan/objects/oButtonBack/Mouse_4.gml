// Inherit the parent event
event_inherited();

if(instance_exists(oControls))
{
	instance_destroy(oControls);
	instance_destroy();
}

if(room!=MainMenuRoom && room!=CreditsRoom)
{
	if(global.audioSettings = true)
	{
		global.audioSettings = false;
	}
}

if(room=CreditsRoom)
{
	room_goto(MainMenuRoom);
}