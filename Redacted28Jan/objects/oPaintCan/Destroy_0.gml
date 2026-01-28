var range=1
audio_play_sound(choose(Hit_Paintcan_A_1,Hit_Paintcan_A_2,Hit_Paintcan_B_5),10,false,3)
for(var i=0;i<=5;i++){
with instance_create_layer(x,y,"Spray",oPaintProjectile)
{
	paintcolour=other.paintcolour
	vsp=-15+irandom_range(-range,range)
	hsp=0+irandom_range(-range,range)
}
with instance_create_layer(x,y,"Spray",oPaintProjectile)
{
	paintcolour=other.paintcolour
	vsp=-12+irandom_range(-range,range)
	hsp=10+irandom_range(-range,range)
}
with instance_create_layer(x,y,"Spray",oPaintProjectile)
{
	paintcolour=other.paintcolour
	vsp=-12+irandom_range(-range,range)
	hsp=-10+irandom_range(-range,range)
}


with instance_create_layer(x,y,"Spray",oPaintProjectile)
{
	paintcolour=other.paintcolour
	vsp=-0+irandom_range(-range,range)
	hsp=20+irandom_range(-range,range)
}

with instance_create_layer(x,y,"Spray",oPaintProjectile)
{
	paintcolour=other.paintcolour
	vsp=-0+irandom_range(-range,range)
	hsp=-20+irandom_range(-range,range)
}


}
