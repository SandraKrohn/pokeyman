// add item to inventory
function inventory_add(_item) {
	// check if item exists in inv, increase quant
	for (var i = 0; i < array_length(inventory); i++) {
		if (_item.item_id == inventory[i].item.item_id) {
			inventory[i].quantity += 1;
			return;
		}
	}
	
	// item doesn't exist in inv - gets added
	var _struct = {
		item : _item,
		quantity : 1
	}
	array_push(inventory, _struct);
}