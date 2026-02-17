if(reflected)
{
	//ProcessAttack(1, 10, 10, 12, 15, 20, 0, -0.33, sTempRangedEnemyProjectile, sTempRangedEnemyProjectile);
	instance_create_layer(x, y, "Effects", droneExplode);
	ScreenShake(8, 30);
	instance_destroy();
}