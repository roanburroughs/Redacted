if(fadeout = true)
{
	alpha=max(alpha-0.04, 0);
}

if (alpha = 1)
{
	instance_destroy();
}