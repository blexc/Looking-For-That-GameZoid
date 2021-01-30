var _up = 0;
var _down = 0;
var _left = 0;
var _right = 0;
var _interact = 0;

if (can_move)
{
	_up = K_UP;
	_down = K_DOWN;
	_left = K_LEFT;
	_right = K_RIGHT;
	_interact = M_LEFT;
}

horizontal = _right - _left;
vertical = _down - _up;
if (horizontal != 0) vertical = 0;
is_moving = horizontal != 0 || vertical != 0;
if (is_moving) direction = point_direction(0, 0, horizontal, vertical);

script_execute(state);

// animations
var _old_sprite = sprite_index;
sprite_index = (is_moving) ? sprite_walk : sprite_idle;
if (_old_sprite != sprite_index) local_frame = 0;

Animate();