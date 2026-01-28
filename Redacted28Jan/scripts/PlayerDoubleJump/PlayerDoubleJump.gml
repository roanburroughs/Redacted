function PlayerDoubleJump(){

 if(key_jump_held and alarm[1]!=0 )
 {
	
	 vsp=0.1
	 doublejumpmultiplier+=0.5
	 doublejumpmultiplier=min(doublejumpmultiplier,15)
 }
 else
 {
	 for(i=0;i<floor(doublejumpmultiplier*1.5);i++)
	{
		with (instance_create_layer(x + irandom_range(-20,20),y,"Spray",oPaintProjectile))
		{
		vsp=20
		hsp=irandom_range(-15,15)
		}
	}
	
	vsp= min (4,vspDoubleJump*doublejumpmultiplier)
 candoublejump=false
 doublejumping=false
 doublejumpmultiplier=1
 }
}