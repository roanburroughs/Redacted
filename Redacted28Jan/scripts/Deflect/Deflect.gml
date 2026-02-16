function Deflect(){
	sprite_index = deflectSpr;
	image_speed = 1;
	
	if(image_index > 3)
	{
		sprite_index = idleSpr;
		flash = 0;
		riposteReady = false;
		parried = true;
		state = PlayerStateFree;
	}

}