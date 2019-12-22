/// @description Pause Game
if(string_copy(room_get_name(room), 0, 5) == "rmLvl"){
	instance_create_layer(0,0,"invisible",oPause);
} else //else destroy the pause object if it exists