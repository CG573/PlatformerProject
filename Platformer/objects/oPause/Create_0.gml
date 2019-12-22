/// @description Pasue & Variables
view_w = camera_get_view_width(oCamera.cam);
view_h = camera_get_view_height(oCamera.cam);
view_x = camera_get_view_x(oCamera.cam);
view_y = camera_get_view_y(oCamera.cam);

background = surface_create(view_w,view_h);
backgroundSprite = sprite_create_from_surface(background, view_x, view_y, view_w, view_h, false, false, 0, 0);

instance_deactivate_all(true);