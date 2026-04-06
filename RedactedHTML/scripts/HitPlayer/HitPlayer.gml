function HitPlayer(_player, _enemyID, _damage, _knockbackX, _knockbackY, _airtimeH, _airtimeV){
	
	with(_player)
	{
		var _distFrom = ((_enemyID.x) - (x));
		if(_enemyID.object_index = oRangedEnemyTempProjectile)
		{
			_distFrom = -_distFrom;
		}
		
		if(state != PlayerStateDead)
		{
			hp -= _damage;
			weight = 0;
			invulnerable = maxinvulnerableframes;
			
			if(hp <= 0)
			{
				state = PlayerStateDead;
			}
			else
			{
				state = PlayerStateHurt;
			}
			
			image_index = 0;
			
			if(_knockbackX || _knockbackY != 0)
			{
				hspKnock = (lengthdir_x(_knockbackX, _knockbackX))*-sign(_distFrom);
				vspKnock = lengthdir_y(_knockbackY, _knockbackY);
				hspAirtime = _airtimeH;
				vspAirtime = _airtimeV;
			}
			
			if(_enemyID.object_index = oRangedEnemyTempProjectile)
			{
				with(_enemyID)
				{
					instance_destroy();
				}
			}
		}
	}
}