room_goto(target)

if(transition)
{
//DialogueTransitionStart(target, sqFadeOut, sqFadeIn);
//room_goto(target)
	
}


with(oStoryTrigger2)
{
	instance_destroy();
}

with(oStoryTrigger3)
{
	finished = true;
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