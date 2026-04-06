function MovingRangedAttack(){
sprite_index = rangedmovingSpr
//show_message("RANGED")
if(framecounter%3=0)
{
	if(image_index<=1)
	{
		with instance_create_depth(x,y-50,depth-1,oPaintProjectile)
		{
			hsp=4*other.face	
			vsp=-8
		}
	}

	if(image_index<=2)
	{
		with instance_create_depth(x,y-50,depth-1,oPaintProjectile)
		{
			hsp=5*other.face	
			vsp=-10
		}
	}

	if(image_index<=3)
	{
		with instance_create_depth(x,y-50,depth-1,oPaintProjectile)
		{
			hsp=4*other.face	
			vsp=-12
		}
	}


}
	
	if (image_index >4)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
	
	
}