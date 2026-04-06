if(instance_place(x, y, oPlayer) && ready)
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

if(alex.talked = true)
{
	ready = true;
}