/// @description draw_items in inventory

var _size = ds_list_size(inventory_list);
for (var i = 0; i < _size; i++)
{
	var _item = inventory_list[| i];
	draw_sprite_ext(_item.sprite_index, 0, UNIT * i, 0, 1, 1, 0, _item.image_blend, 1);	
}