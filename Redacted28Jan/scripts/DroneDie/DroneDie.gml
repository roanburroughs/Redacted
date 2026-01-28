function DroneDie(){
instance_create_layer(x, y, "Instances", droneExplode);
instance_destroy();

}