/// @description SlideTransition(mode,targetRoom)
/// @argument Mode sets Transition Mode between: NEXT, RESTART & GOTO
/// @argument TargetRoom sets taget room when using the GOTO mode

with (oTransition){
	mode = argument[0];
	if(argument_count > 1) target = argument[1];
}