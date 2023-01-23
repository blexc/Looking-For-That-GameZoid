function PlayerStateIdle()
{

}

function PlayerStateMove()
{
	with (oPlayer)
	{
		xvelocity = horizontal * move_speed;
		yvelocity = vertical   * move_speed;
		
		// check for x collision
		if (solid_at(id, x + xvelocity, y))
		{
			while (!solid_at(id, x + sign(xvelocity), y)) x += sign(xvelocity);
			xvelocity = 0;
		}
		x += xvelocity;
		
		// check for y collision
		if (solid_at(id, x, y + yvelocity))
		{
			while (!solid_at(id, x, y + sign(yvelocity))) y += sign(yvelocity);
			yvelocity = 0;
		}
		y += yvelocity;
		
		print("vx: " + string(xvelocity) + ", vy: " + string(yvelocity));
		
		can_interact = point_in_circle(mouse_x, mouse_y, xcenter, ycenter, interact_radius);
		if (can_interact)
		{
			with (collision_point(mouse_x, mouse_y, pInteractible, true, true))
			{
				alarm[9] = 2;
				mouse_hovering_over_me = true;
				if (M_LEFT_PRESSED)
				{
					alarm[0] = 1; // in 1 frame, do your script
				}
			}
		}
	}
}

function player_state_in_trouble()
{
	sprite_index = sprite_trouble;
	image_speed = 0.1;

}