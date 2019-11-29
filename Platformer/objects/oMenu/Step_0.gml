/// @description Control Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls
if(menu_control){
	
	if(keyboard_check_pressed(vk_up)) menu_cursor++; if(menu_cursor >= menu_items) menu_cursor = 0;
	
	if(keyboard_check_pressed(vk_down)) menu_cursor--; if(menu_cursor < 0) menu_cursor = menu_items-1;
	
	if(keyboard_check_pressed(ord("Z"))){
		if(confirmSoundPlayed == false) && (!audio_is_playing(sndStartGame)) audio_play_sound(sndStartGame,10,false)
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		screenShake(4,30);
		menu_control = false;
	}
}

if(menu_x > gui_width+150) && (menu_committed != -1){
	switch (menu_committed){
		case 3: audio_stop_sound(musMenu); slideTransition(TRANS_MODE.NEXT); break;
		case 2: {
			audio_stop_sound(musMenu);
			if(!file_exists(SAVEFILE)){
				slideTransition(TRANS_MODE.NEXT)
			}else{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				global.kills = file_text_read_real(file);
				file_text_close(file);
				slideTransition(TRANS_MODE.GOTO,target);
			}
		}
		break;
		case 1: audio_stop_sound(musMenu); slideTransition(TRANS_MODE.GOTO, rmCredits); break;
		case 0: default: audio_stop_sound(musMenu); game_end(); break;	
	}
	
}