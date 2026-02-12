/// @desc ScreenShake(magnitude, frames)
/// @arg Magnitude sets the strength of the shake
/// @arg Frames sets the length of the shake in frames (60 = 1sec, 60fps)
function ScreenShake(){

with (oCamera)
{
	if (argument0 > shake_remain) //makes it so that if a big shake happens at the same time as a smaller shake, the smaller shake won't override the bigger one
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}

}

}