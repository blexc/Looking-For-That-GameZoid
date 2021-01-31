if (instance_exists(follow))
{
	xfollow = follow.x;	
	yfollow = follow.y;

	x += (xfollow - x) * strength;
	y += (yfollow - y) * strength; 

	camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
}