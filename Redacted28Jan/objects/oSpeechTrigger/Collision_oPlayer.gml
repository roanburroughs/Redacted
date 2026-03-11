bubble = instance_create_depth(0, 0, -1000, oSpeechBubble);
with(bubble)
{
	dialogue = oSpeechTrigger.words;
	timer = oSpeechTrigger.speechTime;
	hidden = false;
	
	boxXScale = oSpeechTrigger._xScale;
	boxYScale = oSpeechTrigger._yScale;
	
	goAway = time_source_create(time_source_game, timer, time_source_units_frames, function()
	{
		hidden = true;
	}, []);
	time_source_start(goAway);
}
instance_destroy();