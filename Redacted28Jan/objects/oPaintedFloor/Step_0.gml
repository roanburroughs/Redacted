
if(instance_exists(oPlayer) and point_distance(x,y,oPlayer.x,oPlayer.y)<100 and image_blend=c_white){
if(oPlayer.state = PlayerStateAttack
or oPlayer.state = LAttack 
or oPlayer.state = LAttack2 
 or oPlayer.state = HAttack1

or oPlayer.state = HAttack4
or oPlayer.state = LAttack3
or oPlayer.state = LAttack4
or oPlayer.state = JAttack
or oPlayer.state = JAttack2




)
{
paintedcolour = choose(c_red,c_aqua,c_green,c_purple,c_orange,c_yellow)
image_index=choose(1,2,3)
//instance_destroy()	
}

}




if(paintedcolour=c_white)
{
image_alpha=0	
}
else if(image_alpha<1)
{
image_alpha+=0.2	
}