/// @description execute state
event_inherited();
script_execute(state);
move_speed = approach(move_speed, move_speed_target, 0.1);

// animation
image_angle = (state == enemy_state_idle) ? 
	round_to_nearest(point_direction(x, y, xwander, ywander), 90) :
	round_to_nearest(point_direction(x, y, xseen, yseen), 90);

var _card = deg_to_cardinal(image_angle);
if (_card == 0 || _card == 2)		y = oscillate(y, 0.2, 1);
else/* (_card == 1 || _card == 3)*/	x = oscillate(x, 0.2, 1);

my_light.x = x;
my_light.y = y;
my_light.image_angle = image_angle;
my_light.image_speed = image_speed;
my_light.image_index = image_index;