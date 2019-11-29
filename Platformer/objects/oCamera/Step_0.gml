/// @description Update Camera


//Room Start Exit Pan
if(roomStartCam>0){ roomStartCam--; oCamera.follow = oExit; hascontrol = false;
}else oCamera.follow = oPlayer;



//Update Destination
if(instance_exists(follow)){
		xTo=follow.x;
		yTo=follow.y;
}



//Update Object Position and Speed
/*if(sign(xTo-x)==1) hsp = max(1,(xTo-x) / 25); else hsp = min(-1,(xTo-x) / 25);
if(sign(yTo-y)==1) vsp = max(1,(xTo-x) / 25); else vsp = min(-1,(yTo-y) / 25);
x += hsp
y += vsp
*/
if(follow != oSign){
x += (xTo-x) / 25;
y += (yTo-y) / 25;
} else x = xTo; y = yTo;


//Keep Camera Inside Room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);


//Screen Shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));



//Update Camera View
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);


//Take control away from the player when a level starts
if(roomStartCam>0) oPlayer.hascontrol=false; else oPlayer.hascontrol=true;