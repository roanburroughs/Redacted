
if(hurt)image_blend=c_red //temp
else image_blend=c_white
if(dead)
{
	//if(!instance_exists(oDeathScreen))instance_create_layer(0,0,"UI",oDeathScreen)
}

	if(face>0){
	image_xscale = abs(image_xscale)
	}
	else{
		image_xscale = -abs(image_xscale)
	}
	
if (flash != 0)
{
	shader_set(flashShader)
	shader_set_uniform_f(uFlash, flash);
}

if(face>0)
	{
		image_xscale = abs(image_xscale);
	}
	else
	{
		image_xscale = -abs(image_xscale);
	}

if( (invulnerable != 0) && ((invulnerable mod 8 < 2) == 0))
{
	//skip draw
}
else
{ 
	draw_sprite_ext( sprite_index, image_index, x, y, image_xscale, 
					image_yscale, image_angle, image_blend, image_alpha );
}