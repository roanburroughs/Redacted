//show_debug_message(video_get_status());
var _bing = video_get_status();
if(_bing == 0)
{
	if(os_windows)	VideoTransitionStart(target, sqFadeOut, sqFadeIn)
	else room_goto(target)
}