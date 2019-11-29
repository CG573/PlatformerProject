if(point_in_circle(oPlayer.x,oPlayer.y,x,y+8,interactrad) && (!instance_exists(oText))){
	with(instance_create_layer(x,y-12,"text",oText)){
		text = other.text;
		length = string_length(text);
		global.plrinteractedwsign = true;
	}	
	
	oCamera.follow = other.id;
}