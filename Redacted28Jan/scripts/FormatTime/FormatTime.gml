
function FormatTime(frames){
//var frames = argument0;
var total_seconds = frames / room_speed; // Convert frames to seconds


var remaining_seconds = total_seconds mod 3600;
var minutes = floor(remaining_seconds / 60);
var seconds = floor(remaining_seconds mod 60);

// Format with leading zeros

var minutes_str = string_format(minutes, 2, 0);
var seconds_str = string_format(seconds, 2, 0);

return minutes_str + ":" + seconds_str;
}