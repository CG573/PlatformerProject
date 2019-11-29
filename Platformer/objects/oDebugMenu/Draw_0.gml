for(var i = 0; i < room_last + 1; i++) {
	draw_set_halign(fa_center);
	draw_set_font(fSign);
	draw_set_color(c_gray);
	if(c == i) draw_set_color(c_white);
	draw_text(128, 120 - ((room_last + 1) / 2 * 16) + i * 16 - 16, room_get_name(i));
	draw_set_halign(fa_left);
}