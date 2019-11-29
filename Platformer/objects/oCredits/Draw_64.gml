/// @description Draw Credits
drawSetText(c_white,fCredits,fa_center,fa_top);
draw_text_ext_transformed(538,text_y,credits,50,100000,2,2,0);

if(string_copy(room_get_name(room), 0, 5) == "rmLvl") exit;