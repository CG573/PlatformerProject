/// @description Goto next room

with(oPlayer){
	if(hascontrol){
		hascontrol = false;
		slideTransition(TRANS_MODE.NEXT);
	}
}

game_save("save0.dat");