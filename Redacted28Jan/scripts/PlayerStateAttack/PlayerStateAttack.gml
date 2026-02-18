function PlayerStateAttack(){
	if(parried=true)
	{
		image_speed = 1.5;
	}
	else
	{
		image_speed = 1;
	}
script_execute(stateAttack);
}