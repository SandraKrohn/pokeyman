function Pokemon() constructor {
	name = "Missingno";
	number = 0;
	front_sprite = spr_player_down;
	back_sprite = spr_player_up;
	type_1 = TYPE.GRASS;
	type_2 = noone;
	
	// current stats
	current_hp = 0;
	experience = 0;
	level = 1;
	
	// base stats
	base_stats = {
		hp : 1,
		attack : 1,
		defense : 1,
		sp_attack : 1,
		sp_defense : 1,
		spd : 1
	}
	
	moveset = [];
	learnset = [];
	
	// build an instance of Pokemon
	function build(_level = 1) {
		level = _level;
		return self;
	}
}