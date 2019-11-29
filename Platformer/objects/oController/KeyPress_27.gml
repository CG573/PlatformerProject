/// @description Pause Game
if(room != rmMenu){

	paused = !paused;

	if(paused == true){
		oPlayer.hascontrol = false;
		oPlayer.hsp = 0;
		oPlayer.vsp = 0;
		oPlayer.grv = 0;
		oPlayer.image_alpha = 0;
	
		oEnemy.hsp = 0;
		oEnemy.vsp = 0;
		oEnemy.grv = 0;
	
		stopper = instance_create_layer(oPlayer.x, oPlayer.y,"invisible",oSolid);
	
		if(instance_exists(oDust))oDust.image_alpha = 0;
	} else{
		oPlayer.hascontrol = true;
		oPlayer.grv = .14;
		oPlayer.image_alpha = 1;
	
		oEnemy.grv = .14;
		oEnemy.hsp = oEnemy.walksp;
	
		instance_destroy(stopper);
	}
}