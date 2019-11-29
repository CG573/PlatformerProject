//Pause

//Keyboard Controls
if(paused){
		if(menu_control){
	
		if(keyboard_check_pressed(vk_up)) menu_cursor++; if(menu_cursor >= menu_items) menu_cursor = 0;
	
		if(keyboard_check_pressed(vk_down)) menu_cursor--; if(menu_cursor < 0) menu_cursor = menu_items-1;
	
		if(keyboard_check_pressed(ord("Z"))){
			menu_committed = menu_cursor;
			screenShake(4,30);
			menu_control = false;
		}
	}

	if(menu_committed != -1){
		switch (menu_committed){
			case 3:{
				paused = false;
				
				oPlayer.hascontrol = true;
				oPlayer.grv = .14;
				oPlayer.image_alpha = 1;
	
				oEnemy.grv = .14;
				oEnemy.hsp = oEnemy.walksp;
	
				instance_destroy(stopper);			
				
				screenShake(.5,20);  
			}break;
			case 2:				screenShake(.5,20); slideTransition(TRANS_MODE.RESTART); break;
			case 1:				screenShake(.5,20); slideTransition(TRANS_MODE.GOTO, oMenu); break;
			case 0: default:	screenShake(.5,20); game_end(); break;
		
		}
	
	}
}