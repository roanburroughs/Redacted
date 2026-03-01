// Inherit the parent event
event_inherited();
hsp = 0;
vsp = 0;

finalY = ystart + finalYPos;

moveStart = true;
moveEnd = false;

timerEnd = time_source_create(time_source_game, waitTime, time_source_units_frames,
								function()
								{
									moveEnd = true;
								}, []);
								
timerStart = time_source_create(time_source_game, waitTime, time_source_units_frames,
								function()
								{
									moveStart = true;
								}, []);

