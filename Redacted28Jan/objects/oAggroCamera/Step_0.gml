framecounter++
vsp=0
grv=0

// Inherit the parent event
//event_inherited();
if(flicker and framecounter>onofftime*60)
{
	if(framecounter>=onofftime*120) framecounter=0
}
else if(enemyScript[state] != -1)
	{
		script_execute(enemyScript[state]);
	}
	depth = -bbox_bottom;

