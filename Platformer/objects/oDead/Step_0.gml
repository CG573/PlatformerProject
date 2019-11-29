if(done == 0){
	vsp += grv

	if(place_meeting(x+hsp,y,oSolid)){
			while	(!place_meeting(x+sign(hsp),y,oSolid)){
				x += sign(hsp);
			}
			hsp = 0;
	}

	x += hsp;


	if(place_meeting(x,y+vsp,oSolid)){
			if(vsp>0){
				done = 1;
				image_index=1;
			}
			while	(!place_meeting(x,y+sign(vsp),oSolid)){
				y += sign(vsp);
			}
			vsp = 0;
	}

	y += vsp;
}

//Jump Pads
if(place_meeting(x,y+2,oJumpPad)) vsp= -6

if(vsp==0)decay-=.01; else decay = 1;
image_alpha = decay;