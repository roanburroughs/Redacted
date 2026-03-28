if(fadeout = true)
{
	alpha=max(alpha-0.04, 0);
}

if (fadeout && alpha = 0)
{
	instance_destroy();
}