
show_debug_message(executeTarget);

if other.executable = true
{
	executeReady = true;
	//executeTarget = instance_id_get(oExecuteArea);
	//executeTarget = instance_find(other, 0);
	executeTarget = other.id;
}
else
{
	executeReady = false;
	executeTarget = 0;
}