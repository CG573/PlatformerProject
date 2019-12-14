	//Create or destroy oPause
if(paused) && (!instance_exists(oPause)){
	instance_create_layer(0, 0, "props", oPause);
}

if(!paused) && (instance_exists(oPause)){
	instance_destroy(oPause);
}