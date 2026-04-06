

//it SHOULD make all the alarms stop moving if its not oPause's alarm
//it SHOULD do this by adding 1 to ever alarm thats ticking down, so every frame it goes alarm[0] +1 and -1 so nothing actually happens
with(all) {
	if(id != oPause){
    for (var i = 0; i < 12; i++) {
        if (alarm[i] > -1) alarm[i] += 1;
    }
	}
}
