vsp += grv

//Don't walk off edges
if(grounded) && (afraidofheights) && (!place_meeting(x + hsp, y + 1, oSolid)){	
	hsp = -hsp;
}

if(place_meeting(x+hsp,y,oSolid)){
		while	(!place_meeting(x+sign(hsp),y,oSolid)){
			x += sign(hsp);
		}
		hsp = -hsp;
}

x += hsp;


if(place_meeting(x,y+vsp,oSolid)){
		while	(!place_meeting(x,y+sign(vsp),oSolid)){
			y += sign(vsp);
		}
		vsp = 0;
}

y += vsp;

	

//Animation
if(!place_meeting(x,y+1,oSolid)){
	grounded = false
	sprite_index = sEnemyA;
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
} else{
	grounded = true;
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sEnemy;
	} else{
		sprite_index = sEnemyR;
	}
}

if(hsp != 0) image_xscale = sign(hsp)*size;
image_yscale = size;


//Jump Pads
if(place_meeting(x,y+2,oJumpPad)) vsp= -6