// Inherit the parent event
event_inherited();

if(instance_exists(oTextBoxController))
{

	enemystorymodecommands()
exit;	
}



if (vulnerable == true)
{
sprite_index=sDogStagger;
}

if (state=ENEMYSTATE.HURT)
{
	fall = 0;
	leap = 0;
}

if(vsp < 0)
		{
			onGround = false;
		}
