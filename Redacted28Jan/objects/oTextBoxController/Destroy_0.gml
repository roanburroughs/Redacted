if(transition)
{
	DialogueTransitionStart(target, sqFadeOut, sqFadeIn);
}

if(instance_exists(oEnemyBoss))
{
	with(oEnemyBoss)
	{
		state = ENEMYSTATE.ATTACK;
		fight = true;
	}
	with(oCamera)
	{
		bossScene = false;
	}
}