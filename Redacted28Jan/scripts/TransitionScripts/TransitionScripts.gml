global.midTransition = false;
global.roomTarget = -1;

function RoomTransition(_type, sequenceX, sequenceY){
	if (layer_exists("transition"))
	{
		layer_destroy("transition");
	}
	
	var _lay = layer_create(-9999, "transition");
	layer_sequence_create(_lay, sequenceX, sequenceY, _type);
	//layer_sequence_create(_lay, 0, 0, _type);
}

function TransitionStart(_roomTarget, _typeOut, _typeIn)
{
	if (!global.midTransition)
	{
		var _lay = layer_create(-9999, "transition");
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		RoomTransition(_typeOut, oCamera.finalCamX, oCamera.finalCamY);
		layer_set_target_room(_roomTarget);
		RoomTransition(_typeIn, oRoomTransitionTrigger.fadeInX, oRoomTransitionTrigger.fadeInY);
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
	//oPlayer.changeRoom = false;
}

function DialogueTransitionStart(_roomTarget, _typeOut, _typeIn)
{
	if (!global.midTransition)
	{
		var _lay = layer_create(-9999, "transition")
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		RoomTransition(_typeOut, oCamera.finalCamX, oCamera.finalCamY);
		layer_set_target_room(_roomTarget);
		RoomTransition(_typeIn, textFadeInX, textFadeInY);
		layer_set_target_room(_roomTarget);
		return true;
	}
	else return false;
}