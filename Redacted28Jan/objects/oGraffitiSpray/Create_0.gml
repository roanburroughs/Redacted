alpha = 0;
fadein = true;
fadeout = false;

timer = 0;
hoverspeed = 0.06;
hoverlength = 0.3;
//hoverspeed = 0.06+irandom_range(0, 0.03)

disappear = time_source_create(time_source_game, 20, time_source_units_frames, function()
{
	fadein = false;
}, []);