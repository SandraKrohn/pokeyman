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
		
		// check tile in front of player for walls
		var _desired_x = x + (grid_size * input_x);
		var _desired_y = y + (grid_size * input_y);
		
		if (get_tile_at(_desired_x, _desired_y) == TILE.EMPTY) {
			target_x = _desired_x;
			target_y = _desired_y;
			moving = true;
		}
		else {
			audio_play_sound(snd_wall_bump, 1, false);
		}
	}
}

else if (key_action) {
	if (get_tile_facing() == TILE.WATER) {
		show_message("Gone fishing.");
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