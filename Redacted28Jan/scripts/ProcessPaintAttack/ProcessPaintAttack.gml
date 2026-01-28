function ProcessPaintAttack(_attackType, _damage, _stunDamage, _knockbackX, _knockbackY, _airtimeH, _airtimeV, _sprIndex, _sprMask){
//Start of attack
	if sprite_index != _sprIndex
	{
		sprite_index = _sprIndex;
		image_index = 0;
		if (!ds_exists(hitByPaintAttack, ds_type_list)) hitByPaintAttack = ds_list_create();
		ds_list_clear(hitByPaintAttack);
	}

	//Use attack hitbox & check for hits
	mask_index = _sprMask;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, pEntity, hitByAttackNow, false);
	if hits > 0
	{
		for (var i = 0; i < hits; i++)
		{
			//If this instance has not yet been hit by this attack
			var hitID = 0;
			hitID =	hitByAttackNow[| i];
			if (ds_list_find_index(hitByPaintAttack, hitID) == -1)
			{
				ds_list_add(hitByPaintAttack, hitID);
				with (hitID)
				{
					if (object_is_ancestor(object_index, pEnemy)) && (hitID.state != ENEMYSTATE.DIE)
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
		}
	}
ds_list_destroy(hitByAttackNow);
instance_destroy();
}