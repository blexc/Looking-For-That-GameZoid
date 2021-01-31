/// @description execute state
event_inherited();
script_execute(state);
move_speed = approach(move_speed, move_speed_target, 0.1);

// animations
var _old_sprite = sprite_index;
if (state == enemy_state_seek)
{
	sprite_index = sprite_seek;	
	with (my_light) sprite_index = sprite_seek;	
}
else
{
	sprite_index = sprite_idle;	
	with (my_light) sprite_index = sprite_idle;	
}

if (_old_sprite != sprite_index) local_frame = 0;

Animate();

my_light.x = x + sprite_width / 2;
my_light.y = y + sprite_height / 2;
my_light.image_angle = angle;
my_light.depth = depth + 1;