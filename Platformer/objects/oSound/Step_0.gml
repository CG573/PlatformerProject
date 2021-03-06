///@description play all the sounds

#region //Variables

sfxvol = max(0,sfxvol);
sfxvol = min(1,sfxvol);
musvol = max(0,musvol);
musvol = min(1,musvol);
jnglvol = max(0,jnglvol);
jnglvol = min(1,jnglvol);

audio_group_set_gain(audiogroup_music,musvol,1);
audio_group_set_gain(audiogroup_soundEffects,sfxvol,1);
audio_group_set_gain(audiogroup_jingles,jnglvol,1);

#endregion

#region //Player Sounds (Walk, Land)

//	Sounds Added:
//		Player Walk (step)
//		Player Land (after fall)
//
//	Sounds Yet To Add:
//		Player Jump (when Z is pressed and the player jumps)


//Player Walk (step)
steptype = choose(sndStep00,sndStep01,sndStep02);
audio_sound_gain(steptype,random_range(.8,1.2),1);
if (oPlayer.image_index >= 0 and (oPlayer.image_index < .15)) and (oPlayer.sprite_index == sPlayerR){ 
	steptype = choose(sndStep00,sndStep01,sndStep02);
	audio_sound_gain(steptype, oSound.sfxvol*choose(0.08,0.1,1.12), 1);
	audio_sound_pitch(steptype, choose(0.8,1,1.2));
	audio_play_sound(steptype, 1, false);
}
steptype = choose(sndStep00,sndStep01,sndStep02);
audio_sound_gain(steptype,random_range(.8,1.2),1);
if (oPlayer.image_index >= 3 and (oPlayer.image_index < 3.15)) and (oPlayer.sprite_index == sPlayerR){
	steptype = choose(sndStep00,sndStep01,sndStep02);
	audio_sound_gain(steptype, oSound.sfxvol*choose(0.8,1,1.2), 1);
	audio_sound_pitch(steptype, choose(0.8,1,1.2));
	audio_play_sound(steptype, 1, false);
}

													

//Player Land (after fall)
	//Object:	oPlayer
	//Event:	Step
	//Line:		72


#endregion

#region //Music

//Main Menu
if(room == rmMenu) && (!audio_is_playing(musMenu)){
	audio_play_sound(musMenu, 10, true);
}else if (room != rmMenu) && (audio_is_playing(musMenu)){
	audio_stop_sound(musMenu);
}

//Credits
if(room == rmCredits) && (!audio_is_playing(musCredits)){
	audio_play_sound(musCredits, 10, true);
}else if (room != rmCredits) && (audio_is_playing(musCredits)){
	audio_stop_sound(musCredits);
}

//Level 1-1
if(room == rmLvl1dash1) && (!audio_is_playing(musLvl1dash1)){
	audio_play_sound(musLvl1dash1, 10, true)
} else if (room != rmLvl1dash1) && (audio_is_playing(musLvl1dash1)){
	audio_stop_sound(musLvl1dash1);
}

#endregion
