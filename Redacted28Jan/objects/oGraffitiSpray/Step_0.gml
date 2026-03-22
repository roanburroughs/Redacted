timer+=0.5;
y += sin(timer * hoverspeed)*hoverlength;
x += -cos(timer * hoverspeed)*hoverlength;

if (fadein)
{
	alpha = min(alpha+0.04, 1);
}
else
{
	alpha = max(alpha-0.04, 0);
}

if(alpha = 1)
{
	time_source_start(disappear);
}

if(!fadein && alpha = 0)
{
	instance_destroy();
}