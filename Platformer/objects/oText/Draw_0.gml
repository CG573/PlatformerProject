var halfw = w*.5;

//Draw The Box
draw_set_color(c_black);
draw_set_alpha(.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,15,15,false);
draw_sprite(sMarker,0,x,y);
draw_set_alpha(1);

//Draw Text
drawSetText(c_white,fSign,fa_center,fa_top);
draw_text(x,y-h-border,text_current);