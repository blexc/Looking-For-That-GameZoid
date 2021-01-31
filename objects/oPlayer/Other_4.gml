/// @description randomize move_speed

move_speed = choose(1, 2, 2, 2, 2, 2, 2, 2, 2, 3);
if (debug_mode) move_speed = 2;

switch (move_speed)
{
	case 1: image_blend = c_blue; break;
	case 3: image_blend = c_red; break;
	default: image_blend = c_white; break;
}