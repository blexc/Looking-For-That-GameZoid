/// @description randomize move_speed

move_speed = choose(1, 2, 2, 2, 2, 2, 2, 2, 2, 3);

switch (move_speed)
{
	case 1: image_blend = $bdfff5; break; // light blue
	case 3: image_blend = $ffbdbd; break; // light red
	default: image_blend = c_white; break;
}