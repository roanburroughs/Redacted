
with(oPlayer)
{
if(place_meeting(x,y,oWater)) 
{
	candoublejump=false
	sprite_index=riseSpr
	if(key_jump_held)grv=-0.2
	else grv=0.2


}
	else 
	{
		
		grv = 0.275 //original grav
		
	
}
}