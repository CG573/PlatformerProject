/// @description Pause Game
if(string_copy(room_get_name(room), 0, 5) == "rmLvl"){
	paused = !paused;
}