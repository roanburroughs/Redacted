if(instance_exists(oSpeechBubble))
{
	instance_destroy(oSpeechBubble);
}
bubble = instance_create_depth(0, 0, -1000, oSpeechBubble);
with(bubble)
{
	dialogue = other.words;
	timer = other.speechTime;
	hidden = false;

	boxXScale = other._xScale;
	boxYScale = other._yScale;
	/*
	goAway = time_source_create(time_source_game, timer, time_source_units_frames, function()
	{
		hidden = true;
	}, []);*/
	time_source_start(goAway);
}
instance_destroy();