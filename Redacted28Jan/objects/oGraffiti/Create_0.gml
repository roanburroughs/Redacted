graffitiDone = false;
sprayGone = false;
//showInput = instance_nearest(x, y, oUpInput);
showInput = instance_create_layer(x+(sprite_width/2), y-60, "interactibles", oUpInput);
bongus = [0, 1, 2];

graffitiSprite = choose(sGraffiti, sGraffiti2, sGraffiti3, sGraffiti4, sGraffiti5, sGraffiti6);
//graffitiSprite = sGraffiti6;