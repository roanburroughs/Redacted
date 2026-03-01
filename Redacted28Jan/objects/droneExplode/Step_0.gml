if sprite_index != sEnemyDroneBoom
	{
		sprite_index = sEnemyDroneBoom;
		image_index = 0;
		if (!ds_exists(hitByExplosion, ds_type_list)) hitByExplosion = ds_list_create();
		ds_list_clear(hitByExplosion);
	}

	//Use attack hitbox & check for hits
	mask_index = sEnemyDroneBoom_HB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, pEntity, hitByAttackNow, false);
	if hits > 0
	{
		for (var i = 0; i < hits; i++)
		{
			//If this instance has not yet been hit by this attack
			var hitID = 0;
			hitID =	hitByAttackNow[| i];
			if (ds_list_find_index(hitByExplosion, hitID) == -1)
			{
				ds_list_add(hitByExplosion, hitID);
				with (hitID)
				{
					if (object_is_ancestor(object_index, pEnemy))
					{
						HitEnemy(hitID, 2, 20, 10, 13, 0.1, 15, 15,
								0.01, -0.66, other.id);
					}
					if(entityHitScript != -1)
					{
						//script_execute(entityHitScript);
					}
				}
			}
		}
	}
ds_list_destroy(hitByAttackNow);