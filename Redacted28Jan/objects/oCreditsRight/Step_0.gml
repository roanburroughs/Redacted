if(clicked)
{
	size = min(size+0.08, 1.5);
}

if(letGo)
{
	size = max(size-0.08, 1);
}

keyRight = keyboard_check_pressed(vk_right) + gamepad_button_check_pressed(4, gp_padr);

if(keyRight)
{
	oCredits.screenPos++;
}