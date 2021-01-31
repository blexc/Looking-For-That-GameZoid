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
	_interact = M_LEFT_PRESSED;
}

xcenter = x + sprite_width / 2;
ycenter = y + sprite_height / 2;

can_interact = point_in_circle(mouse_x, mouse_y, xcenter, ycenter, interact_radius);
if (can_interact && _interact)
{
	with (collision_point(mouse_x, mouse_y, pInteractible, true, true))
	{
		alarm[0] = 1; // in 1 frame, do your script
	}
}

horizontal = _right - _left;
vertical = _down - _up;
if (horizontal != 0) vertical = 0;
is_moving = horizontal != 0 || vertical != 0;
if (is_moving) angle = point_direction(0, 0, horizontal, vertical);
script_execute(state);

// animations
var _old_sprite = sprite_index;
sprite_index = (is_moving) ? sprite_walk : sprite_idle;
if (_old_sprite != sprite_index) local_frame = 0;

if (state != player_state_in_trouble) Animate();
else sprite_index = sprite_trouble;