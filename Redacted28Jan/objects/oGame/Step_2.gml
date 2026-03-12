/// @desc pausing the game
if (keyboard_check_released(vk_escape))
{
	if(global.mainMenu)
	{
		global.gamePaused = !global.gamePaused;
	}
	
	
	if(global.gamePaused)
	{
		with(all)
		{
			gamePausedImageSpeed = image_speed
			image_speed = 0;
		}
		
	}
	/*else
	{
		with(all)
		{
			image_speed = gamePausedImageSpeed;
		}
	}*/
	
	if(!global.gamePaused && !global.mainMenu)
	{
		with(all)
		{
			image_speed = gamePausedImageSpeed;
		}
	}
}

