  // Horizontal collision with walls
    if (place_meeting(x + hsp, y, oWall)) {
        while (!place_meeting(x + sign(hsp), y, oWall)) { //Insures you can cleanly touch the wall, remove to see what I mean
            x += sign(hsp);
        }
        hsp = 0;
    }
    x += hsp;
    
    // Vertical collision with walls
    if (place_meeting(x, y + vsp, oWall)) {
        while (!place_meeting(x, y + sign(vsp), oWall)) {//Insures you can cleanly touch the wall, remove to see what I mean
            y += sign(vsp);
        }
        vsp = 0;
		grounded=true
    }
	
    
    // Platform collision, doesnt do anythign while down is held
	// Maybe we can have a parent object that has oWall and oPlatform in it so we dont need to have two blocks here
    if (vsp > 0 && place_meeting(x, y + vsp, oPlatform) and !key_down) {
     
        if (!place_meeting(x, y, oPlatform)) {
            while (!place_meeting(x, y + sign(vsp), oPlatform)) {//Insures you can cleanly touch the wall, remove to see what I mean
                y += sign(vsp);
            }
            vsp = 0;
			grounded=true
        }
    }
	
	
	if(vsp!=0) grounded=false
    y += vsp;
 
	 