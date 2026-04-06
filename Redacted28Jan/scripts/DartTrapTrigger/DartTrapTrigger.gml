function DartTrapTrigger(){
	var _dartTrap = ds_list_create();
	
	var _bleh = camera_get_view_x(view_camera[0])
	var _bluh = camera_get_view_y(view_camera[0])
	var _screenX = camera_get_view_x(view_camera[0])+view_wport;
	var _screenY = camera_get_view_y(view_camera[0])+view_hport;
	
	/*if(oDartTrap.x<_screenX && oDartTrap.y<_screenY)
	{
		var _trap = oDartTrap
		
	}*/
	//var _check = collision_rectangle(_bleh, _bluh, _screenX, _screenY, oDartTrap, false, false)
	var _checkTrap = collision_rectangle_list(_bleh, _bluh, _screenX, _screenY, oDartTrap, false, false, _dartTrap, false)
	if(_checkTrap > 0)
	{
		for (var i=0; i<_checkTrap; i++)
		{
			with(_dartTrap[| i])
			{
				if(aggro=false && alarm[0] =-1)
				{
					aggro = true;
				}
			}
		}
	}
//  ds_list_destroy(_dartTrap)
}