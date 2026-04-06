with(oPlayer)
{
	//if on ground
if(vsp<1 and vsp>-1)
{
if(face=1)other.sprayangle=0 //facing right
if(face=-1)other.sprayangle=180 //facing left
}
//if rising
else if(vsp<1) 
{
	if(keyRight)other.sprayangle=315 //facing right
else if(keyLeft)other.sprayangle=225 //facing left
else other.sprayangle=270	
}
//if falling
else if(vsp>-1) {
	
if(keyRight)other.sprayangle=45 //facing right
else if(keyLeft)other.sprayangle=135 //facing left
else other.sprayangle=90	
}
}

image_angle=angle_lerp(image_angle,sprayangle,anglespeed)



if(image_alpha<1)image_alpha+=0.1
if(!instance_exists(oPlayer))
{

instance_destroy()	
	
}

