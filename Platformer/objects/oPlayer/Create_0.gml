hsp = 0;
vsp = 0;
basesp = 1.5;
walksp = basesp;
runsp = 3;

landvol = 0;

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(ord("Z"));
key_dash = keyboard_check_pressed(ord("X"));
key_sprint = keyboard_check(ord("C"));

hp = 3;

airjumptime = 0;

old_vsp = vsp;

airtime = 0;

grv = 0.12;

dashtimer = 0;

dead = false

hascontrol = true;

if(room == rmMenu) hascontrol = false;