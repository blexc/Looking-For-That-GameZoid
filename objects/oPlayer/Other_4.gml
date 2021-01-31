/// @description randomize move_speed

var s = 2, m = 3, l = 4;
move_speed = choose(s, m, m, m, m, m, m, m, m, l);

switch (move_speed)
{
	case s: image_blend = $95fff5; break; // light blue
	case l: image_blend = $ff7878; break; // light red
	default: image_blend = c_white; break;
}