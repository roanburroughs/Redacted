if(other.keyUp && !graffitiDone && graffitiReady)
{
	graffitiDone = true;
	oGraffitiManager.graffitiCounter++;
	global.graffitiCounter++;
	audio_play_sound(soSpray, 100, false, 1);
	//instance_create_layer(x-20, y-20, "interactibles", oGraffitiSpray)
	//instance_create_layer(x+20, y+20, "interactibles", oGraffitiSpray)
	//instance_create_layer(x-20, y+80, "interactibles", oGraffitiSpray)
	
	//bongus[0] = instance_create_depth(x-20, y-20, 1000, oGraffitiSpray)
	//bongus[1] = instance_create_depth(x+20, y+20, 1000, oGraffitiSpray)
	//bongus[2] = instance_create_depth(x-20, y+80, 1000, oGraffitiSpray)
	
	bongus[0] = instance_create_depth((x+sprite_width)-114, y-20, 1000, oGraffitiSpray)
	bongus[1] = instance_create_depth((x+sprite_width)-134, y+20, 1000, oGraffitiSpray)
	bongus[2] = instance_create_depth((x+sprite_width)-114, y+80, 1000, oGraffitiSpray)
	
}