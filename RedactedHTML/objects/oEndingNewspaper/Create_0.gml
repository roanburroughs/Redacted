timer = 0;
hoverlengthX = 0.3;
hoverspeedX = 0.06;
hoverlengthY = 0.1;
hoverspeedY = 0.02;

textTimer = 0;
textFadeSpeed = 0.03;
textHoverSpeed = 0.06;

alpha = 0;
textAlpha = 0;
textAppear = false;

fade = time_source_create(time_source_game, 300, time_source_units_frames, function()
{
	textAppear = true;
}, []);

