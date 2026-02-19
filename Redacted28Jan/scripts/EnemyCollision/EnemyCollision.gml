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
				vsp = 0;
			}
			
			//Set vsp to 0 to collide
			
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
				EnemyGroundCheck(true);
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
					onGround = true;
					}
				}
				
				if place_meeting( x, y + vsp, oConveyor )
				{
					var _pixelCheck = _subPixelY * sign(vsp);
					while !place_meeting( x, y + _pixelCheck, oConveyor )
					{
						y+= _pixelCheck;
					}
					vsp = 0;
					EnemyGroundCheck(true);
				}
				
		var _clampvsp = max( 0, vsp );
		var _list = ds_list_create(); //Create a DS list to store all of the objects we run into
		var _array = array_create(0);
		array_push( _array, oWall, oElevator, oPlatform );
		
		//Do the actual check and add objects to list
		var _listSize = instance_place_list( x, y+1 + _clampvsp + 8, _array, _list, false );
		
		//Loop through the colliding instances and only return one if its top is below the player
		for( var i = 0; i < _listSize; i++ )
		{
			//Get an instance of oWall or oSemiSolidWall from the list
			var _listInst = _list[| i];
			
			//Avoid magnetism
			if ( _listInst.vsp <= vsp || instance_exists(myFloorPlat) )
			&& ( _listInst.vsp < 0 || place_meeting( x, y+1 + _clampvsp, _listInst ) )
			{
				//Return a solid wall or any semi solid walls that are below the player
				if _listInst.object_index == oWall
				|| object_is_ancestor( _listInst.object_index, oWall )
				|| floor(bbox_bottom) <= ceil( _listInst.bbox_top - _listInst.vsp )
				{
					//Return the "highest" wall object
					if !instance_exists(myFloorPlat)
					|| _listInst.bbox_top + _listInst.vsp <= myFloorPlat.bbox_top + myFloorPlat.vsp
					|| _listInst.bbox_top + _listInst.vsp <= bbox_bottom
					{
						myFloorPlat = _listInst;
					}
				}
			}
		}
		
		//Destroy the DS list to avoid memory leak
		ds_list_destroy(_list);
		
		//One last check to make sure the floor platform is actually below us
		if instance_exists(myFloorPlat) && !place_meeting( x, y + 8, myFloorPlat )
		{
			myFloorPlat = noone;
		}
		
		//Land on the ground platform if there is one
		if instance_exists(myFloorPlat)
		{
			//Scoot up to our wall precisely
			var _subPixelP = .5;
			while !place_meeting( x, y + _subPixelP, myFloorPlat ) && !place_meeting( x, y, oWall ) { y += _subPixelP; };
			//Make sure we don't end up below the top of a semi solid
			if myFloorPlat.object_index == oElevator || object_is_ancestor(myFloorPlat.object_index, oElevator)
			{
				while place_meeting( x, y, myFloorPlat ) { y -= _subPixelP; };
			}
			//Floor the y variable
			y = floor(y);
			
			//Collide with the ground
			vsp = 0;
			EnemyGroundCheck(true);
		}
		
		if place_meeting( x, y+1, oWall )
			{
				EnemyGroundCheck(true);
			}
			
			if place_meeting( x, y+1, oConveyor)
				{
					var _chungus = instance_place(x, y+1, oConveyor)
					if(image_xscale == sign(_chungus.image_xscale))
					{
						enemySpeed = 5;
					}
					else
					{
						enemySpeed = 10;
					}
					x += _chungus.conveyorspeed*-sign(_chungus.image_xscale);
				}
		}
		
	//Move
	y += vsp;

}