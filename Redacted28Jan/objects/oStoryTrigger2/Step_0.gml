if(instance_place(x, y, oPlayer))
{
	with (showInput)
	{
		appear = true;
	}
}
else
{
	with (showInput)
	{
		appear = false;
	}
}
show_debug_message(appear)