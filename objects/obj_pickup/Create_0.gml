event_inherited();

// overriding parent's interact function
function interact() {
	inventory_add(item);
	instance_destroy();
}