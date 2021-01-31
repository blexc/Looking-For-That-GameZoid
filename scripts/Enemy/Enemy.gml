function enemy_update_wander_point()
{
	xwander = x;
	ywander = y;
	
	var _ten_units = UNIT * 10;
	var _change_x = choose(true, false);
	
	if (_change_x) xwander += irandom_range(-_ten_units, _ten_units);
	else		   ywander += irandom_range(-_ten_units, _ten_units);

	xwander = clamp(xwander, UNIT, room_width - UNIT);
	ywander = clamp(ywander, UNIT, room_height - UNIT);
	
	if (solid_at_point(xwander, ywander)) enemy_update_wander_point();
}

function enemy_state_idle()
{
	image_blend = c_white;
	image_index = 0;
	move_speed_target = move_speed_idle;
	angle = point_direction(x, y, xwander, ywander);
	
	if (mp_potential_step(xwander, ywander, move_speed, 0))
		enemy_update_wander_point();
	
	// find a new point
	while (collision_line_ext(x, y, xwander, ywander, oSolid, 0, 1, UNIT))
		enemy_update_wander_point();
	
	// find player
	if (instance_exists(oPlayer) && alarm[2] == -1)
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
	image_blend = c_white;
	move_speed_target = move_speed_seek;
	angle = point_direction(x, y, xseen, yseen);
	
	if (instance_exists(oPlayer))
	{
		if (!collision_line_ext(x, y, oPlayer.x, oPlayer.y, oSolid, 1, 1, UNIT))
		{
			xseen = oPlayer.x;
			yseen = oPlayer.y;
		}
		
		// you've caught the player
		if (place_meeting(x, y, oPlayer) && alarm[2] == -1)
		{
			alarm[2] = room_speed; // wait before going to room
			with (oPlayer)
				state = player_state_in_trouble;
			state = enemy_state_idle;
			
			if (!audio_is_playing(sfxTrouble))
				audio_play_sound(sfxTrouble, 0, false);
			return;
		}
		
		if (mp_potential_step(xseen, yseen, move_speed, 0) ||
			distance_to_object(oPlayer) > 120)
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