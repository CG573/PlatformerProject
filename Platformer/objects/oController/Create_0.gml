#macro RES_W 1074
#macro RES_H 576
display_set_gui_size(RES_W,RES_H);

global.kills = 0;
global.killsthisroom = 0;
scoretextscale = 1;

paused = false;

//Pause
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[3] = "Return To Game";
menu[2] = "Restart Level";
menu[1] = "Exit To Menu";
menu[0] = "Exit Game";

menu_items = array_length_1d(menu);
menu_cursor = 3;