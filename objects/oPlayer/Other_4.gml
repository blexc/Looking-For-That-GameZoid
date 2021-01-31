/// @description randomize move_speed

var ss = 1, s = 2, m = 3, l = 4;
move_speed = choose(s, m, m, m, m, m, m, m, m, m, l);
if (0.01 > random(1)) move_speed = ss;

switch (move_speed)
{
	case ss: image_blend = c_aqua; break; 
	case s: image_blend = c_blue; break;
	case l: image_blend = c_red; break; 
	default: image_blend = c_white; break;
}