// Inherit the parent event
event_inherited();

if(instance_exists(oControls))
{
	instance_destroy(oControls);
}
else
{
	x=room_width+300;
	oButtonPlay.x=room_width+300;
	oButtonQuit.x=room_width+300;
	instance_create_layer(room_width/2, room_height/3, "Instances", oControls);
	instance_create_layer(room_width/2, room_height/1.25, "Instances", oButtonBack);
}