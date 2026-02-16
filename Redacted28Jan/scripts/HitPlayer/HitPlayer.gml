function HitPlayer(_player, _enemyID, _damage, _knockbackX, _knockbackY, _airtimeH, _airtimeV){
	
	with(_player)
	{
		var _distFrom = ((_enemyID.x) - (x));
		if(flash > 0)
		{
			riposteReady = true;
			_enemyID.hsp = 50*sign(_distFrom);
			_enemyID.parryDuration = 60;
			_enemyID.stateTarget = ENEMYSTATE.CHASE;
			_enemyID.state = ENEMYSTATE.PARRIED;
		}
		else if(state != PlayerStateDead)
		{
			hp -= _damage;
			weight = 0;
			invulnerable = 40;
			
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
		}
	}
}