/// @description play the alert sound if ONE enemy spots you...

if (instance_exists(oCameraEnemy))
{
	var n = instance_number(oCameraEnemy);
	var _dectect_player = false;
	
	for (var i = 0; i < n; i++)
	{
		var _inst = instance_find(oCameraEnemy, i);
		if (_inst.state == enemy_state_seek)
		{
			_dectect_player = true;
			if (!audio_is_playing(music_alert))
				audio_play_sound(music_alert, 0, true);
			break;
		}
	}
	
	if (!_dectect_player &&
		audio_is_playing(music_alert))
	{
		audio_stop_sound(music_alert);
	}
}