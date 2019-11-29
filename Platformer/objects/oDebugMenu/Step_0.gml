c = clamp((UP_PRESSED ? c-1 : (DOWN_PRESSED ? c+1 : c)), 0, room_last);
if(ACTION_1_PRESSED) room = c;