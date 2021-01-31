state = PlayerStateMove;

can_move = true;
move_speed = 5;
xvelocity = 0;
yvelocity = 0;
angle = 0;
is_moving = false;

sprite_idle = sPlayerIdle;
sprite_walk = sPlayerMove;
sprite_trouble = sPlayerTrouble;

image_speed = 0;
sprite_index = sprite_idle;
local_frame = 0;

can_interact = false;
interact_radius = 2 * UNIT;
xcenter = x + sprite_width / 2;
ycenter = y + sprite_height / 2;