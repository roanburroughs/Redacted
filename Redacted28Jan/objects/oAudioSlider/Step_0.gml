keyLeft = keyboard_check(vk_left);

if(mouse_check_button(mb_left))
{
	if((mouse_x < x+sprite_width/2) && (mouse_x > x-sprite_width/2) && (mouse_y < y+sprite_height/2) && (mouse_y > y-sprite_height/2))
	{
		held = true;
	}
}
else
{
	held = false;
}

percentage = point_distance(x, y, xposZero, y)/400;

if(held)
{
	x = mouse_x;
}

if(x>xposFull)
{
	x = xposFull;
}
if(x<xposZero)
{
	x=xstart-400;
	percentage = 0;
}


