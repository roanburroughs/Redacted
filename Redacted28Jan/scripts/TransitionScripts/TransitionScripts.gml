global.midTransition = -1;
global.roomTarget = -1;

function RoomTransition(_type){
	if (layer_exists("transition"))
	{
		layer_destroy("transition");
	}
	
	var _lay = layer_create(-9999, "transition");
	layer_sequence_create(_lay, oCamera.finalCamX, oCamera.finalCamY, _type);
	//layer_sequence_create(_lay, 0, 0, _type);
}

function TransitionStart(_roomTarget, _typeOut, _typeIn)
{
	if (!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		RoomTransition(_typeOut);
		layer_set_target_room(_roomTarget);
		RoomTransition(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function TransitionChangeRoom()
{
	room_goto(global.roomTarget);
}

function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}