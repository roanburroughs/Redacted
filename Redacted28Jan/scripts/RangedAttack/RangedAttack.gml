function RangedAttack(){
sprite_index = rangedSpr
//show_message("RANGED")
if(framecounter%3=0)
{
	
		with instance_create_depth(x,y-50,depth-1,oPaintProjectile)
		{
			hsp=4*other.face	
			vsp=-18
		}
	
 


}
	if (image_index >4)
	{
		sprite_index = idleSpr;
		state = PlayerStateFree;
	}
}