var any = false //set up to check that both conditions are true
var all_ok = true
with (oPaintedFloor) {
    if (place_meeting(x, y, other)) {
		any = true
		if (image_blend == c_white) all_ok = false;
		}
}
if (any and all_ok){
if( !flashed)
	{
flash=2
flashed=true

	}
else 
{
 
	image_index = 1	
}
}
/*var inst = instance_place(x, y, oPaintedFloor);
if (inst != noone && inst.image_blend != c_white) image_index = 2