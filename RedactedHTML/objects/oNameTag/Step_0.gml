if(!instance_exists(oTextBoxController)) instance_destroy()
//Include every name tag
with(oTextBoxController)
{
other.x=x+86
other.y=y-64
 if(CharacterSpeaking="Amara")other.sprite_index=snametagamara
 
 if(CharacterSpeaking="Alex")other.sprite_index=NametagAlex
 
 if(CharacterSpeaking="???")other.sprite_index=NametagUnkown
 
 if(CharacterSpeaking="Leah")other.sprite_index=NametagLeah
//if(CharacterSpeaking="morrigan")other.sprite_index=sNametag_Morrigan - Taken From Wonder
//if(CharacterSpeaking="mallack")other.sprite_index=sNametag_Mallack - Taken From Wonder
	
} 