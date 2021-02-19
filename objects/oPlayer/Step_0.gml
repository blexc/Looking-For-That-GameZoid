var _up = 0;
var _down = 0;
var _left = 0;
var _right = 0;
var _interact = 0;

// increase radius every time you get a candle
interact_radius = interact_radius_start + 
	how_many_candles_in_inventory() * UNIT;
	
interact_radius = oscillate(interact_radius, 0.3, 1);

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