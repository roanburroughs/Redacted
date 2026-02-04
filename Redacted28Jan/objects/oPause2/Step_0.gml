if(keyboard_check_released(vk_escape))
{
	paused=!paused	

	if(paused)
	{
	
		pausesurface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface)) ///surface create makes the screenshot
	        surface_copy(pausesurface, 0, 0, application_surface) //surface copy actually takes the screenshot
	
	
		instance_deactivate_all(true)//true tells the game to deactivate everything EXCEPT this
	}
	else
	{
		instance_activate_all()	
		 if (surface_exists(pausesurface)) {
				surface_free(pausesurface); //deletes the screenshot
			}
	}
}


//create :makes the surface for a screenshot
//copy : takes the screenshot
//free : deletes the screenshot
//draw: actually displays the screenshot - goes in draw