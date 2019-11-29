/// @description Progress Text

letter+=spd;
text_current = string_copy(text,1,floor(letter));

draw_set_font(fSign);
if(h == 0) h = string_height(text);
if(w == 0) w = string_width(text);

//destroy when done
if(letter >= length) && (keyboard_check(vk_anykey)){
	instance_destroy();
	with(oCamera) follow = oPlayer;
}