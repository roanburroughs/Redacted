function Execute(){
	
	var _attackTypeTemp = 2;
	//var _toEnemy = point_distance(x, y, executeTarget.x, executeTarget.y);
	//var _toEnemyX = lengthdir_x(x, executeTarget.x);
	//var _toEnemyY = lengthdir_y(y, executeTarget.y);
	
	var _distFrom = ((executeTarget.x) - (x))
	
	if(image_index < 2)
	{
		hsp = 0;
	}
	
	if(image_index > 2)
	{
		//hsp = 1*face;
	}
	
	if(image_index > 2 && image_index < 5)
	{
		hsp = 3*face;
		vsp = -2;
	}
	
	if(image_index > 5 && image_index < 7)
	{
		//hsp = (lerp(_distFrom, 0, 0.9)+30)*face;
		hsp = lerp(_distFrom, 0, 0);
	}
	
	
	//attack type, damage, stun damage, hspknock, vspknock, hspairtime, vspairtime, sprite, mask
	ProcessAttack(_attackTypeTemp, 100, 1, 2, 12, 0.01, 0, sPlayerExecute, sPlayerExecute_HB);

	if(image_index = 11)
	{
		instance_destroy(executeTarget);
		executeReady = false;
		state = PlayerStateFree;
	}
	

}