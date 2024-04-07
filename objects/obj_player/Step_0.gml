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
		var _tile = get_tile_at(_desired_x, _desired_y);
		
		if (_tile == noone || _tile.tile_type == TILE.EMPTY || _tile.tile_type == TILE.GRASS) {
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
	var _tile = get_tile_facing();
	if (_tile != noone) {
		if (_tile.tile_type == TILE.WATER) {
			show_message("Gone fishing.");
		}
		else if (_tile.tile_type == TILE.INTERACT) {
			_tile.interact();
		}
	}
}

if (moving) {
	// set animation
	set_animation(animations.walk);
	
	// move
	x = approach(x, target_x, move_speed);
	y = approach(y, target_y, move_speed);
	if (x == target_x && y = target_y) {
		// grass logic
		if (place_meeting(x, y, obj_grass)) {
			instance_create_depth(x, y, depth - 1, obj_grass_effect);
		if (encounter_steps > 0)
			encounter_steps--;
		else {
			encounter_steps = irandom_range(8, 16);
			show_message(get_encounter());
			}
		}
		moving = false;
	}
}
else
	set_animation(animations.idle);

sprite_index = get_sprite(dir);