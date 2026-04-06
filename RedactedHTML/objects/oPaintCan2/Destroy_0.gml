audio_play_sound(choose(Hit_Paintcan_A_1,Hit_Paintcan_A_2,Hit_Paintcan_B_5),10,false,3)

with instance_create_layer(x, y, "Effects", droneExplode)
{
paintedcolour=other.paintcolour	
image_xscale=3
image_yscale=3
	
}