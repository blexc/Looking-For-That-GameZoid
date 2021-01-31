function enemy_update_wander_point()
{
	xwander = 1 + irandom(room_width - 1);
	ywander = 1 + irandom(room_height - 1);
}

function enemy_state_idle()
{
	image_alpha = 1;
	image_blend = c_white;
	image_speed = 0;
	image_index = 0;
	move_speed_target = move_speed_idle;
	direction = point_direction(x, y, xwander, ywander);
	
	if (distance_to_point(xwander, ywander) < 1)
		enemy_update_wander_point();
	else
		mp_potential_step(xwander, ywander, move_speed, 0);
	
	// find a new point
	while (collision_line_ext(x, y, xwander, ywander, oSolid, 1, 1, UNIT))
		enemy_update_wander_point();
	
	// find player
	if (instance_exists(oPlayer))
	{
		with (my_light)
		{
			if (place_meeting(x, y, oPlayer))
				other.state = enemy_state_seek;
		}
	}
}
function enemy_state_seek()
{
	image_alpha = 1;
	image_speed = 0.5;
	image_blend = c_white;
	move_speed_target = move_speed_seek;
	
	if (instance_exists(oPlayer))
	{
		if (!collision_line_ext(x, y, oPlayer.x, oPlayer.y, oSolid, 1, 1, UNIT))
		{
			xseen = oPlayer.x;
			yseen = oPlayer.y;
		}
		
		// collision detection
		if (place_meeting(x, y, oPlayer))
		{
			alarm[2] = room_speed; // wait before going to room
			with (oPlayer)
			{
				state = player_state_in_trouble;
			}
			state = enemy_state_idle;
			return;
		}
		
		if (distance_to_point(xseen, yseen) > 0)
		{
			mp_potential_step(xseen, yseen, move_speed, 0);
		}
		else
		{
			state = enemy_state_idle;
			enemy_update_wander_point();
		}
	}
}

function enemy_state_frez()
{
	image_blend = c_grey;
	image_alpha = abs(1 - alarm[1] / freeze_time) + 0.2;
	move_speed_target = 0;
}

function enemy_freeze(_inst)
{
	with (_inst)
	{
		state = enemy_state_frez;
		instance_deactivate_object(my_light);
		alarm[1] = freeze_time;
	}
}