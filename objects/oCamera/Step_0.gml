if (instance_exists(follow))
{
	xfollow = follow.x;	
	yfollow = follow.y;
}

x += (xfollow - x) * strength;
y += (yfollow - y) * strength; 

//x = clamp(x, view_w_half, room_width - view_w_half);
//y = clamp(y, view_h_half, room_height - view_h_half);
//camera_zoom(zoom);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);