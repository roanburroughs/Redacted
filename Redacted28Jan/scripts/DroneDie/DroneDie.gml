function DroneDie(){
instance_create_layer(x, y, "Effects", droneExplode);
ScreenShake(6, 30);
instance_destroy();
}