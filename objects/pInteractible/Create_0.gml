/// @desc destroy item if already in inventory
mouse_hovering_over_me = false;
room_start_in = room;
if (is_in_inventory_color(object_index, color)) instance_destroy(id);
image_blend = color;