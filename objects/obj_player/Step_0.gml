/// @description move

if (input_x != 0 || input_y != 0) {
	if (!moving) {
		// set direction
		if (input_x == -1)
			dir = DIR.LEFT;
		else if (input_x == 1)
			dir = DIR.RIGHT;
		else if (input_y == -1)
			dir = DIR.UP;
		else if (input_y == 1)
			dir = DIR.DOWN;
		
		// set target and begin moving
		var _desired_x = x + (grid_size * input_x);
		var _desired_y = y + (grid_size * input_y);
		
		if (!place_meeting(_desired_x, _desired_y, obj_wall)) {
			target_x = _desired_x;
			target_y = _desired_y;
			moving = true;
		}
		else {
			audio_play_sound(snd_wall_bump, 1, false);
		}
	}
}

if (moving) {
	// set animation
	set_animation(animations.walk);
	
	// move
	x = approach(x, target_x, move_speed);
	y = approach(y, target_y, move_speed);
	if (x == target_x && y = target_y)
		moving = false;
}
else
	set_animation(animations.idle);

sprite_index = get_sprite(dir);