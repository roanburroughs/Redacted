function Riposte(){
	
	var _attackTypeTemp = 1;
	
	if (image_index < 4)
	{
		hsp = 0;
	}
	else
	{
		hsp = lerp(hsp, 40, 0.9)*face;
	}
	//attack type, damage, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 10, 5, 16, 18, 0.01, 0, sPlayerRiposte, sPlayerRiposte_HB);
	//ProcessAttack(_attackTypeTemp, 10, 12, 18, 0, -0.33, sPlayerRiposte, sPlayerRiposte_HB);
	
	if (image_index = 5)
	{
		sprite_index = idleSpr;
		flash = 0;
		riposteReady = false;
		state = PlayerStateFree;
	}
}