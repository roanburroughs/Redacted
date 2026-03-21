Enemies = instance_place_list(x, y, pEnemy, EnemyList, false); //places number of enemies into EnemyList
Elevators = instance_place_list(x, y, oElevator, ElevatorList, false); //same for elevators
if(Enemies>0)
{
	enemiesActive = true; //there are enemies inside the room
}
else
{
	enemiesActive = false; //all enemies inside the room are dead
}

if(roomActive)
{
	if(instance_place(x, y, oPlayer) && enemiesActive)
	{
		/*if(!instance_exists(gate)) //creates enemy gate
		{
			gate = instance_create_layer(gateX, gateY, "Instances", oEnemyGate);
			gate.image_xscale = gateXStretch;
			gate.image_yscale = gateYStretch;
			with(gate)
			{
				fadein=true;
			}
		}*/
		with(gate)
		{
			fadein = true;
		}
		with(backGate)
		{
			fadein = true;
		}
	}
	
	if(Elevators>0)
	{
		for(var i=0; i<ElevatorList; i++)
		{
			with(ElevatorList[| i])
			{
				if(!roomReady)
				{
					roomReady = true;
				}
			}
		}
	}
}

if(instance_exists(gate) && Enemies = 0)
{
	with(gate)
	{
		//fadein = false;
		fadeout = true; //gate fades once enemies are dead
	};
	//instance_destroy();
}

if(!enemiesActive)
{
	if(Elevators>0)
	{
		for(var i=0; i<Elevators; i++)
		{
			with(Elevators[| i])
			{			
				if(!roomFinished)
				{
					roomFinished = true;
				}
			}
		}
	}
}
