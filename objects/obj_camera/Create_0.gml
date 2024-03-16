aspect_ratio = 3/2;
camera_height = 160;
camera_width = round(camera_height * aspect_ratio);
camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);
camera_set_view_size(view_camera[0], camera_width, camera_height);
camera_target = obj_player;