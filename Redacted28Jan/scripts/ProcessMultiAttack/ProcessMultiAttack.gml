function ProcessMultiAttack(_attackType, _damage, _stunDamage, _knockbackX, _knockbackY, _airtimeH, _airtimeV, _juggleTime, _sprIndex, _sprMask){ //Attack script for attacks with multiple hits e.g. spin attacks
//Start of attack
	if sprite_index != _sprIndex
	{
		sprite_index = _sprIndex;
		image_index = 0;
		if (!ds_exists(hitByMultiAttack, ds_type_list)) hitByMultiAttack = ds_list_create();
		ds_list_clear(hitByMultiAttack);
	}

	//Use attack hitbox & check for hits
	mask_index = _sprMask;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, pEntity, hitByAttackNow, false);
	if hits > 0
	{
		if(pEnemy.weight >= _juggleTime) //_juggleTime is the length of time before the next hit in the multihit happens
		{
			ds_list_clear(hitByMultiAttack);
		}
				
		for (var i = 0; i < hits; i++)
		{
			//If this instance has not yet been hit by this attack
			var hitID =	hitByAttackNow[| i];
			if (ds_list_find_index(hitByMultiAttack, hitID) == -1)
			{
				ds_list_add(hitByMultiAttack, hitID);
				with (hitID)
				{				
					if (object_is_ancestor(object_index, pEnemy))
					{
						HitEnemy(id, _attackType, _damage, _stunDamage, _knockbackX, _knockbackY,
								_airtimeH, _airtimeV, other.id);
					}
					if(entityHitScript != -1)
					{
						script_execute(entityHitScript);
					}
				}
			}
			if(hitID.weight >= _juggleTime)
			{
				ds_list_clear(hitByMultiAttack);
			}
		}
	}
ds_list_destroy(hitByAttackNow);
mask_index = idleSpr;

}