// returns a wild Pokemon based on area passed in
function get_encounter() {
	return new Charmander().build(irandom_range(3, 7));
}