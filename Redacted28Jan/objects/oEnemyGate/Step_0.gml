if(fadein = true)
{
	alpha=min(alpha+0.04, 1); //lets you add up to 1 without using a while loop
	if(alpha = 1)
	{
		fadein = false;
	}
}

if(fadeout = true)
{
	alpha=max(alpha-0.04, 0);
}