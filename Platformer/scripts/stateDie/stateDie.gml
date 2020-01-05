/*
sndplayed = false

if(sndplayed == false){
	sndplayed = true;
	audio_play_sound(sndPlayerDeath,10,false);
}

if(sndplayed && !audio_is_playing(sndPlayerDeath))*/slideTransition(TRANS_MODE.GOTO,room)
/*hascontrol = false;
diesp = distance_to_point(xstart,ystart-32)/24

if(distance_to_point(xstart,ystart-32)<diesp) diesp=distance_to_point(xstart,ystart-32);

if(!x=xstart || !y=ystart-32){
	move_towards_point(xstart,ystart-32,diesp);
} else hascontrol = true;*/

global.kills -= global.killsthisroom