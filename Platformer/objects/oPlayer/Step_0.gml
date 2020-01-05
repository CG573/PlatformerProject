if(room != rmMenu){

#region Movement & Collision

if(hascontrol){
		key_left = keyboard_check(vk_left);
		key_right = keyboard_check(vk_right);
		key_up = keyboard_check(vk_up);
		key_down = keyboard_check(vk_down);
		key_jump = keyboard_check_pressed(ord("Z"));
		key_dash = keyboard_check_pressed(ord("C"));

	move = -key_left + key_right;
	hsp = walksp*move

	vsp += grv

	if(place_meeting(x,y+1,oSolid) && key_jump || key_jump && airjumptime>0){
		vsp = -3
	}

	if(place_meeting(x+hsp,y,oSolid)){
			while	(!place_meeting(x+sign(hsp),y,oSolid)){
				x += sign(hsp);
			}
			hsp = 0;
	}

	x += hsp;


	if(place_meeting(x,y+vsp,oSolid)){
			while	(!place_meeting(x,y+sign(vsp),oSolid)){
				y += sign(vsp);
			}
			vsp = 0;
			airjumptime = 10;
	}

	y += vsp;


	if(!place_meeting(x,y+1,oSolid) && airjumptime>0) airjumptime--;

	//Dash
	/*if(dashDuration == 0) && (sign(hsp) == 1) && (hsp > walksp) hsp = walksp;
	if(dashDuration == 0) && (sign(hsp) == -1) && (hsp < -walksp) hsp = -walksp;
	
	if(key_dash) && (key_left) && (!key_right) && (!key_up) && (!key_down){
				image_xscale = -1;
				hsp -= 6;
				dashDuration = 20;
			}

dashDuration--;
dashDuration = max(dashDuration,0);*/

}else{
	key_dash = 0;
	key_jump = 0;
	key_left = 0;
	key_right = 0;
	key_up = 0;
}

//Jump Pads
if(place_meeting(x,y+2,oJumpPad)) vsp= -6
#endregion

#region Sound
//Volume
if(!place_meeting(x,y+1,oSolid)) landvol+=0.01;
#endregion

#region Animation
if(!place_meeting(x,y+1,oSolid)){
	sprite_index = sPlayerA;
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
} 
else
{
	if(sprite_index == sPlayerA){
        audio_play_sound(sndLand,1,false)
        audio_sound_pitch(sndLand,choose(0.8,1,1.2));
        screenShake(0.5,20); 
        repeat(5){
            with(instance_create_layer(x,bbox_bottom,"particles",oDust)){
                vsp = 0;
			}
		}
	}
	image_speed = 1;	
	if(hsp == 0){
		sprite_index = sPlayer;
	}
	else{
			sprite_index=sPlayerR;
	}
}

if(hsp != 0) image_xscale = sign(hsp);
#endregion

}