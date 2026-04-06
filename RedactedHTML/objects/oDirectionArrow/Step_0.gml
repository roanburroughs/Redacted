timer++;

//y += sin(timer * hoverspeed)*hoverlength;
x += cos(timer * hoverspeed)*hoverlength;
if(instance_exists(oAlex))
{
	if(oAlex.talked = true && !instance_exists(oTextBoxController))
	{
		appear = true;
	}
}

if (appear)
{
	alpha = min(alpha+0.04, 1);
}