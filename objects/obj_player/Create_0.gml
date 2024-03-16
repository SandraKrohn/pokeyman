moving = false;
dir = DIR.DOWN;
grid_size = 16;
target_x = x;
target_y = y;
move_speed = 1;
input_x = 0;
input_y = 0;

animations = {
	idle: {
		left: spr_player_idle_left,
		right: spr_player_idle_right,
		up: spr_player_idle_up,
		down: spr_player_idle_down
	},
	walk: {
		left: spr_player_left,
		right: spr_player_right,
		up: spr_player_up,
		down: spr_player_down
	}
}

animation = animations.idle;

function get_sprite(_dir) {
	switch(_dir) {
		case DIR.LEFT: return animation.left;
		case DIR.RIGHT: return animation.right;
		case DIR.UP: return animation.up;
		case DIR.DOWN: return animation.down;
		default: return sprite_index;
	}
}

function set_animation(_animation) {
	if (animation == _animation) return;
	
	animation = _animation;
	image_index = 0;
}

function get_tile_at(_x, _y) {	
	var _tile = instance_place(_x, _y, par_tile);
	return (_tile == noone) ? TILE.EMPTY :  _tile.tile_type;
}

function get_tile_facing() {
	var _desired_x = x;
	var _desired_y = y;
	
	switch(dir) {
		case DIR.LEFT:
			_desired_x -= grid_size;
			break;
		case DIR.RIGHT:
			_desired_x += grid_size;
			break;
		case DIR.UP:
			_desired_y -= grid_size;
			break;
		case DIR.DOWN:
			_desired_y += grid_size;
			break;
	}
	
	return get_tile_at(_desired_x, _desired_y);
}

// git notes / commit message:
// added camera, tile check for interactions