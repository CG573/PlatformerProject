//pasue

//Escape Key Pressed
	if(keyboard_check_pressed(vk_escape)){
		paused = !paused;
	}

//Create or destroy oPause
	if(paused) && (!instance_exists(oPause)){
		instance_create_layer(0, 0, "invisible", oPause);
	} else if(instance_exists(oPause)){
			instance_destroy(oPause);
		}