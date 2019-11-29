if(point_in_circle(oPlayer.x,oPlayer.y,x,y+8,interactrad)){
	if(!instance_exists(oInteractableMarker)){
		oMarker = instance_create_layer(x,y-8,"text",oInteractableMarker);
	}
}else{
	instance_destroy(oMarker);
	oMarker = noone
}

if(instance_exists(oText)) 	instance_destroy(oMarker);