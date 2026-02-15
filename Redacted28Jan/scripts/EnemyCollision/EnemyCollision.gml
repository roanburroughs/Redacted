function EnemyCollision(){
	
	//Collide & Move
	//X Collision
	var _subPixel = .5;
		if place_meeting(x + hsp, y, oWall)
		{
			var _pixelCheck = _subPixel * sign(hsp);
			while !place_meeting(x + _pixelCheck, y, oWall)
			{
				x += _pixelCheck;
			}

			//Set hsp to zero to collide
			hsp = 0;
		}

	x += hsp;
	
	//Apply gravity
	vsp += grav;

	if vsp < 0 && place_meeting( x, y + vsp, oWall )
			{
				//Scoot up to the wall precisely
				var _pixelCheck = _subPixel * sign(vsp);
				while !place_meeting( x, y + _pixelCheck, oWall)
				{
					y += _pixelCheck;
				}
			}
			
			//Set vsp to 0 to collide
			vsp = 0;
			
	if vsp >= 0
		{
			if place_meeting( x, y + vsp, oWall )
			{
				//Scoot up to the wall precisely
				var _pixelCheck = _subPixel * sign(vsp);
				while !place_meeting( x, y + _pixelCheck, oWall )
				{
					y += _pixelCheck;
				}
				//Set vsp to 0 to collide
				vsp = 0;
				//EnemyGroundCheck(true);
			}
			
			if place_meeting( x, y+1, oWall )
				{
					EnemyGroundCheck(true);
				}
			else
			{
				EnemyGroundCheck(false);
			}
		}
		
	//Move
	y += vsp;

}