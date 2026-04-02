var _videoData = video_draw(); //processes video
var _videoStatus = _videoData[0];
if (_videoStatus == 0) //playing without error
{
	//draw surface that captured current video frame
	draw_surface(_videoData[1], 0, 0);
}