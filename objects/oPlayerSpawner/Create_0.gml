/// @description Insert description here
if (global.spawner_color == my_spawner_color &&
	global.spawner_number == my_spawner_number)
{
	instance_create_layer(x, y, "Player", oPlayer);	
}

image_blend = my_spawner_color;