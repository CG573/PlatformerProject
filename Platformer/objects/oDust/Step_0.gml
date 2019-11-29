/// @description Do teh shet
image_angle += rotsp;
if(rotsp>0)rotsp-=.2;
image_alpha -= random_range(0.05,0.1);
image_alpha = max(0, image_alpha);
x += hsp;
y += vsp;
hsp *= .9;
vsp *= .9;