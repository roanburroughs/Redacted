
var player_on_me = instance_place(x, y-1, oPlayer);  // Check below the floor

if (player_on_me != noone) {
    Breaking = true;  // Only activate THIS floor
}
if(Breaking){BreakTimer++}
if(BreakTimer >(timer*60)) instance_destroy()
if(timer >=3 and BreakTimer<60)
{
	sprite_index=s_TimedFloor3
}
else if( (timer=2 and BreakTimer<60) or (BreakTimer<120 and timer=3)	) 
{
	sprite_index=s_TimedFloor2
}
else
{
	sprite_index=s_TimedFloor1
}

if(BreakTimer >(timer*60)-3)
{
	sprite_index=s_TimedFloorBreak
	
}