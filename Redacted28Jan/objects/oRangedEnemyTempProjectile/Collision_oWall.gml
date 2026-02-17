if(reflected)
{
	instance_create_layer(x, y, "Effects", droneExplode);
	ScreenShake(8, 30);
}

instance_destroy();