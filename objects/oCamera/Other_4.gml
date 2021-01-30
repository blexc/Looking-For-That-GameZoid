/// @desc setup

view_enabled = true;
view_visible[0] = true;
cam = view_camera[0];

// follow and strength will change once game starts
follow = oPlayer;
strength = 1 / 2;

if (instance_exists(follow))
{
	x = follow.x;
	y = follow.y;
}

xfollow = x;
yfollow = y;

view_w = RES;
view_h = RES;
view_w_half = view_w * 0.5;
view_h_half = view_h * 0.5;
camera_set_view_size(cam, view_w, view_h);