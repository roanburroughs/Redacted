if(aggro){
	
	if(right)
	with instance_create_depth(x+20,y,100,oWaterProjectile)
	{
		
	grv=0
	
	hsp=20
	vsp=0
	
	}
	
	if(left)
	with instance_create_depth(x-20,y,100,oWaterProjectile)
	{
		
	grv=0
	
	hsp=-20
	vsp=0
	
	}
	
	if(down)
	with instance_create_depth(x,y+15,100,oWaterProjectile)
	{
		
	grv=0
	
	hsp=0;
	vsp=20;
	
	}
	
	if(up)
	with instance_create_depth(x,y-20,100,oWaterProjectile)
	{
		
	grv=0
	
	hsp=0
	vsp=-20;
	
	}
alarm[0]=60
aggro=false	

}