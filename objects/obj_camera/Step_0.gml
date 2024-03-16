camera_x = camera_target.x - camera_width / 2;
camera_y = camera_target.y - camera_height / 2;
camera_set_view_pos(
	view_camera[0],
	clamp(camera_x, 0, room_width - camera_width),
	clamp(camera_y, 0, room_height - camera_height));