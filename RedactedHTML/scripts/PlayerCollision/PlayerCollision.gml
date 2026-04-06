function PlayerCollision(){
	if vsp < 0 && place_meeting( x, y + vsp, oWall )
	{
		//Scoot up to the wall precisely
		var _subPixelY = .5
		var _pixelCheck = _subPixelY * sign(vsp);
		while !place_meeting( x, y + _pixelCheck, oWall)
		{
			y += _pixelCheck;
		}
		
		//Set vsp to 0 to collide
		vsp = 0;
	}
	
	if vsp >= 0
			{
				var _subPixelY = .5;
				if place_meeting( x, y + vsp, oWall )
				{
					//Scoot up to the wall precisely
					var _pixelCheck = _subPixelY * sign(vsp);
					while !place_meeting( x, y + _pixelCheck, oWall )
					{
						y += _pixelCheck;
					}
					//Set vsp to 0 to collide
					vsp = 0;
				}
				
				if place_meeting( x, y + vsp, oPlatform)
				{
					var _pixelCheck = _subPixelY * sign(vsp);
					while !place_meeting(x, y + _pixelCheck, oPlatform)
					{
						y += _pixelCheck;
					}
					if (!place_meeting(x, y, oPlatform)) 
					{
						while (!place_meeting(x, y + sign(vsp), oPlatform)) //Insures you can cleanly touch the wall, remove to see what I mean
						{
							y += sign(vsp);
						}
					vsp = 0;
					}
				}
				
				
			if (place_meeting( x, y+1, oConveyor) and !instance_exists(oTextBoxController))
				{
					var _chungus = instance_place(x, y+1, oConveyor)
					if(moveDir == sign(_chungus.image_xscale))
					{
						hsp = 10-_chungus.conveyorspeed;
					}
					else
					{
						hsp = 10+_chungus.conveyorspeed;
					}
					x += _chungus.conveyorspeed*-sign(_chungus.image_xscale);
				}
			}
}