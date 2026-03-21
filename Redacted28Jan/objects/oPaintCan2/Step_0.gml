// Inherit the parent event
event_inherited();
if(hp==2)
{
	sprite_index = sPaintcan;
}

if(hp==1)
{
	sprite_index = sPaintcanHit;
}
show_debug_message(hp)
if(hp==0)
{
	instance_destroy();
}
