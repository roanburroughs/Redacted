function ProcessEnemyAttack(_enemyID, _damage, _knockbackX, _knockbackY, _airtimeH, _airtimeV, _sprIndex, _sprMask){
	//Start of attack
	if sprite_index != _sprIndex
	{
		sprite_index = _sprIndex;
		image_index = 0;
		if (!ds_exists(hitByEnemyAttack, ds_type_list)) hitByEnemyAttack = ds_list_create();
		ds_list_clear(hitByEnemyAttack);
	}
	
	//Use attack hitbox & check for hits
	mask_index = _sprMask;
	var hitByEnemyAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, oPlayer, hitByEnemyAttackNow, false);
	if hits > 0
	{
		for (var i = 0; i < hits; i++)
		{
			//If this instance has not yet been hit by this attack
			var hitID = 0;
			hitID =	hitByEnemyAttackNow[| i];
			if (ds_list_find_index(hitByEnemyAttack, hitID) == -1)
			{
				ds_list_add(hitByEnemyAttack, hitID);
				with (hitID)
				{
					if (object_index == oPlayer)
					{
						HitPlayer(id, _enemyID, _damage, _knockbackX, _knockbackY,
								 _airtimeH, _airtimeV);
					}
					/*if(entityHitScript != -1)
					{
						script_execute(entityHitScript);
					}*/
				}
			}
		}
	}
ds_list_destroy(hitByEnemyAttackNow);
if(object_index = oEnemyTemp)
{
mask_index = sEnemyTemp;
}

if(object_index = oEnemy)
{
	mask_index = sDogIdle;
}
	
}