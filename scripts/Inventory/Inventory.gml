function how_many_candles_in_inventory()
{
	var _num_candles = 0;
	with (oInventory)
	{
		var _size = ds_list_size(inventory_list);
		for (var i = 0; i < _size; i++)
		{
			var _item = inventory_list[| i];
			if (_item.object_index == oCandle)
			{
				_num_candles++;
			}
		}
	}
	return _num_candles;
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
	if (_inst.image_blend == c_white)
	{
		transition_start(_room);
		global.spawner_color = c_white;
		global.spawner_number = 0;
		return true;
	}
	
	with (oInventory)
	{
		var _size = ds_list_size(inventory_list);
		for (var i = 0; i < _size; i++)
		{
			var _item = inventory_list[| i];
			if (_item.image_blend == _inst.image_blend)
			{
				transition_start(_room);
				global.spawner_color = _inst.image_blend;
				global.spawner_number = _inst.door_number;
				return true;	
			}
		}
	}
	
	return false;
}

// if item in inventory AND is the same color
function is_in_inventory_color(_obj, _color)
{
	with (oInventory)
	{
		var _size = ds_list_size(inventory_list);
		for (var i = 0; i < _size; i++)
		{
			var _item = inventory_list[| i];
			if (_obj == _item.object_index &&
				_color == _item.image_blend) return true;
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