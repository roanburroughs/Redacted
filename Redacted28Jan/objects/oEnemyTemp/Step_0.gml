 // Inherit the parent event
event_inherited();

if(instance_exists(oTextBoxController))
{
	enemystorymodecommands()
	
exit;	
}
if(vsp < 0)
		{
			onGround = false;
		}
		
if (enemyPaint >= enemyPaintMax)
{
	staggered = true;
}
else
{
	staggered = false;
}

with(createExecuteArea)
{
	x = other.x;
	y = other.y;
	if(other.staggered)
	{
		alpha = 1;
		executable = true;
	}
	else if (other.staggered = false)
	{
		alpha = 0;
		executable = false;
	}
}
//show_debug_message(onGround);