instance_destroy(self);
global.killsthisroom++
global.kills++
oController.scoretextscale = 2;
instance_create_layer(x,y,layer,oDead)