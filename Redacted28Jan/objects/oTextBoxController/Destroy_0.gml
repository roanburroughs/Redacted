if(transition)
{
	DialogueTransitionStart(target, sqFadeOut, sqFadeIn);
}

with(oStoryTrigger2)
{
	instance_destroy();
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