/// @description Set Up Camera
cam = view_camera[0];
view_w_half = camera_get_view_width(cam)*.5;
view_h_half = camera_get_view_height(cam)*.5;
xTo = xstart;
yTo = ystart;
roomStartCam = 180;
follow = 0;
shake_length = 0
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

if(sign(xTo-x)==1) hsp = max(1,(xTo-x) / 25); else hsp = min(-1,(xTo-x) / 25);
if(sign(yTo-y)==1) vsp = max(1,(xTo-x) / 25); else vsp = min(-1,(yTo-y) / 25);