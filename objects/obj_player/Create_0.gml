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