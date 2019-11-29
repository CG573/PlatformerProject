/*if(instance_exists(oPlayer) && instance_exists(oCamera)){
drawSetText(c_white,fDefault,fa_left,fa_top)
draw_text(10,20,"oPlayer.hp = "				+string(oPlayer.hp))
draw_text(10,40,"oPlayer.x = "				+string(oPlayer.x))
draw_text(10,60,"oPlayer.y = "				+string(oPlayer.y))
draw_text(10,80,"oPlayer.hsp = "			+string(oPlayer.hsp))
draw_text(10,100,"oPlayer.vsp = "			+string(oPlayer.vsp))
draw_text(10,120,"oPlayer.airjumptime = "	+string(oPlayer.airjumptime))
draw_text(10,140,"oPlayer.airtime = "		+string(oPlayer.airtime))
draw_text(10,160,"oPlayer.dashtimer = "		+string(oPlayer.dashtimer))
draw_text(10,180,"oCamera.follow = "		+string(oCamera.follow))
draw_text(10,200,"oCamera.roomStartCam = "	+string(oCamera.roomStartCam))
draw_text(10,220,"oPlayer.dead = "			+string(oPlayer.dead))
draw_text(10,240,"oPlayer.walksp = "		+string(oPlayer.walksp))
}

if (room != rmMenu) && (instance_exists(oPlayer)){
	scoretextscale = max(scoretextscale * .95, 1);
	drawSetText(c_black, fMenu, fa_right, fa_top);
	draw_text_transformed(RES_W-10,12,"kills = "+string(global.kills),scoretextscale,scoretextscale,0);
	draw_text_transformed(RES_W-6,12,"kills = "+string(global.kills),scoretextscale,scoretextscale,0);
	draw_text_transformed(RES_W-8,14,"kills = "+string(global.kills),scoretextscale,scoretextscale,0);
	draw_text_transformed(RES_W-8,10,"kills = "+string(global.kills),scoretextscale,scoretextscale,0);
	drawSetText(c_white, fMenu, fa_right, fa_top);
	draw_text_transformed(RES_W-8,12,"kills = "+string(global.kills),scoretextscale,scoretextscale,0);

}
*/
//drawSetText(c_white,fDefault,fa_left,fa_top);
//draw_text(10,10,"Paused = " + string(paused));

if(paused){
	draw_set_alpha(.9);
	draw_set_color(c_black);
	draw_roundrect(50,50,RES_W-50,RES_H-50,false)
	
	draw_set_font(fMenu);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);

	for(var i = 0; i < menu_items; i++;){
		var offset = 2;
		var txt = menu[i];
		if(menu_cursor == i){
			txt = string_insert("> ", txt, 0);
			var col = c_white
		}else{
			var col = c_gray
		}
		var xx = room_width/2;
		var yy = room_height/2- (menu_itemheight * (i*1.5));
		draw_set_color(c_black);
		draw_text(xx-offset,yy,txt);
		draw_text(xx+offset,yy,txt);
		draw_text(xx,yy+offset,txt);
		draw_text(xx,yy-offset,txt);
		draw_set_color(col);
		draw_text(xx,yy,txt);
	}
}


//if(instance_exists(oCamera))draw_text(10,180,"oCamera.follow = " + string(oCamera.follow))