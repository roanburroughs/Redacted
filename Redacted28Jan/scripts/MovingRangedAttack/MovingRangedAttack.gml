function MovingRangedAttack(){

//show_message("RANGED")
	with instance_create_depth(x,y-50,depth-1,oPaintProjectile)
	{
		hsp=15*other.face	
		vsp=-10
	}
	state = PlayerStateFree; //end
}