/// @description Insert description here

// do not display the key if youre not in the room it started in
// you can display it if its in your inventory though
if (room_start_in != room && !is_in_inventory_color(object_index, color))
	instance_deactivate_object(id);
else
{
	instance_activate_object(id);
	visible = true;
}