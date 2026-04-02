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
		if(object_index = oRoomTransitionTrigger)
		{
			RoomTransition(_typeIn, oRoomTransitionTrigger.fadeInX, oRoomTransitionTrigger.fadeInY);
		}
		if(object_index = oFinalLevelTransitionTrigger)
		{
			RoomTransition(_typeIn, oFinalLevelTransitionTrigger.fadeInX, oFinalLevelTransitionTrigger.fadeInY);
		}
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
	if(room!=level1_2Cutscene_Video && room!=FinalLevel4Cutscene1_Video && room!=FinalLevel4Cutscene2_Video && room!= FinalLevel4BadEnding && room!=IntroRoom && room!=MainMenuRoom)
	{
		oPlayer.changeRoom = false;
	}
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
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function HubTransitionStart(_roomTarget, _typeOut, _typeIn)
{
	if (!global.midTransition)
	{
		var _lay = layer_create(-9999, "transition")
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		RoomTransition(_typeOut, oCamera.finalCamX, oCamera.finalCamY);
		layer_set_target_room(_roomTarget);
		RoomTransition(_typeIn, oHubTransitionTrigger.fadeInX, oHubTransitionTrigger.fadeInY);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function VideoTransitionStart(_roomTarget, _typeOut, _typeIn)
{
	if (!global.midTransition)
	{
		var _lay = layer_create(-9999, "transition")
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		RoomTransition(_typeOut, 0, 0);
		layer_set_target_room(_roomTarget);
		RoomTransition(_typeIn, 0, 0);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function FinalTransitionStart(_roomTarget, _typeOut, _typeIn)
{
	
}