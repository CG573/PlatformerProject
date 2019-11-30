//pasue
if(room != rmMenu) || (room != rmCredits) || (rmFailsafe){
	//Escape Key Pressed
	if(keyboard_check_pressed(vk_escape)){
		paused = !paused;
	}

	//Create or destroy oPause
	if(paused) && (!instance_exists(oPause)){
		instance_create_layer(oPlayer.x, oPlayer.y, "invisible", oPause);
	} else if(instance_exists(oPause)){
			instance_destroy(oPause);
	}
}