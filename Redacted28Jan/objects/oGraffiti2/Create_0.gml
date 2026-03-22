graffitiReady = false;
graffitiDone = false;
sprayGone = false;
//showInput = instance_nearest(x, y, oUpInput);
showInput = instance_create_layer(x+(sprite_width/2), y-70, "interactibles", oUpInput);
//graffitiTrigger = instance_nearest(x, y, oStoryTrigger3);
alpha = 0;

bongus = [0, 1, 2];