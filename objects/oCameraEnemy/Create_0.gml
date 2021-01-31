/// @description create light and vars
event_inherited();
var _layer_name = "Light";
if (!layer_exists(_layer_name)) layer_create(0, _layer_name);
my_light = instance_create_layer(x, y, _layer_name, oCameraLight);

sprite_idle = sCameraIdle;
sprite_seek = sCameraSeek;

move_speed_idle = 0.3;
move_speed_seek = 1.1;
move_speed = 0;

state = enemy_state_idle;
move_speed_target = move_speed_idle;

// player's last seen pos
xseen = x;	
yseen = y;

// idle coordinates
xwander = x;
ywander = y;

freeze_time = room_speed * choose(3, 4, 5);

image_speed = 0;
local_frame = 0;
angle = 0;