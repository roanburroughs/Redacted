if(clicked)
{
	size = min(size+0.08, 1.5);
}

if(letGo)
{
	size = max(size-0.08, 1);
}

keyLeft = keyboard_check_pressed(vk_left) + gamepad_button_check_pressed(4, gp_padl);

if(keyLeft)
{
	oCredits.screenPos--;
}