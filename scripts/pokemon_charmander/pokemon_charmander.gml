function Charmander() : Pokemon() constructor {
	name = "Charmander";
	number = 4;
	front_sprite = spr_charmander_front;
	back_sprite = spr_charmander_back;
	type_1 = TYPE.FIRE;
	
	// base stats
	base_stats = {
		hp : 39,
		attack : 52,
		defense : 43,
		sp_attack : 60,
		sp_defense : 50,
		spd : 65
	}
	
	moveset = [new Ember()];
}