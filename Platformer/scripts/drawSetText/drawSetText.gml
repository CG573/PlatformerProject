/// @desc DrawSetText(color,font,halign,valign)
/// @arg color
/// @arg font
/// @arg halign (horizontal alignment)
/// @arg valign (vertical alignment)

/*
Allows one lign setup of major text drawing vars.
Requiring all four prevents silly coders (me) from forgetting one
and therefore creating a dumb dependency on other event calls.
(Then wondering why their text changes later in development.)
*/

draw_set_color(argument0);
draw_set_font(argument1);
draw_set_halign(argument2);
draw_set_valign(argument3);