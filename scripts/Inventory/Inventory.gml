function get_candle(_inst)
{
	with (oPlayer) interact_radius += UNIT;
	add_to_inventory(_inst);
}

function add_to_inventory(_inst)
{
	with (oInventory)
	{
		ds_list_add(inventory_list, _inst);
	}
	with (_inst)
	{
		x = -1000;	
		y = -1000;	
	}
}

// returns whether or not you have the right key
function door_open(_inst, _room)
{
	with (oInventory)
	{
		var _size = ds_list_size(inventory_list);
		for (var i = 0; i < _size; i++)
		{
			var _item = inventory_list[| i];
			if (_item.image_blend == _inst.image_blend)
			{
				transition_start(_room);
				return true;	
			}
		}
	}
	
	return false;
}

function is_in_inventory(_obj)
{
	with (oInventory)
	{
		var _size = ds_list_size(inventory_list);
		for (var i = 0; i < _size; i++)
		{
			var _item = inventory_list[| i];
			if (_obj == _item.object_index) return true;
		}
	}
	return false;
}