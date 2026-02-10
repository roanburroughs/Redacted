function AirRangedAttack(){

//show_message("RANGED")
	with instance_create_depth(x,y-50,depth-1,oPaintProjectile)
	{
		hsp=1*other.face	
		vsp=20
	}
	state = PlayerStateFree; //end
}