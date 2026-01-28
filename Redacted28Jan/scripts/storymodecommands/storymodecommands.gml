function enemystorymodecommands(){
	//Stop alarms from counting down
  for (var i = 0; i < 12; i++) {
        if (alarm[i] > -1) alarm[i] += 1;
    }
	
}