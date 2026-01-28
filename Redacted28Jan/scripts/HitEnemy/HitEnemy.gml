function HitEnemy(_enemy, _attackType, _playerDamage, _stunDamage, _playerKnockbackX, _playerKnockbackY,
				_airtimeH, _airtimeV, _source){
	with (_enemy)
	{
		if (state != ENEMYSTATE.DIE)
		{
			enemyHP -= _playerDamage;
			enemyPaint += _stunDamage;
			flash = 1;
			weight = 0;
			hspAirtime = 0;
			vspAirtime = 0;
			staggerDuration = 0;
			
			if(staggered)
			{
				//instance_create_layer(x, y, "Instances", oExecuteArea);
				with(createExecuteArea)
				{
					//alpha = 1;
				}
				//stateWaitDuration = 0;
				//stateWait = 120;
			}
			
			if(_attackType = 1)
			{
				instance_create_layer(x, y-50, "Effects", oHeavyBlow);
			}
			
			if(_attackType = 2)
			{
				instance_create_layer(x, y-50, "Effects", oDeathBlow);
			}
		
			//Hurt or dead?
			if (enemyHP <= 0)
			{
				if(object_index = oDrone)
				{
					state = ENEMYSTATE.DRONE_DIE;
				}
				else
				{
					state = ENEMYSTATE.DIE;
				}
			}
			else
			{
				if (state != ENEMYSTATE.HURT) statePrevious = state;
				state = ENEMYSTATE.HURT;
			}
			
			if ((onGround) && (_attackType = 0))
			{
				_playerKnockbackY = 0;
			}
			
			image_index = 0;
			if (_playerKnockbackX || _playerKnockbackY != 0)
			{
				var _distFrom = ((_source.x) - (x));
				hspKnock = (lengthdir_x(_playerKnockbackX, _playerKnockbackX))*-sign(_distFrom);
				vspKnock = lengthdir_y(_playerKnockbackY, _playerKnockbackY);
				hspAirtime = _airtimeH;
				vspAirtime = _airtimeV;
			}
		}
	}
}