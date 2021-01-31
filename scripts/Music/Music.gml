function play_main_theme()
{
	with (oMusic)
	{
		audio_play_sound(music_main_theme, 100, true);
		audio_sound_gain(music_main_theme, 0, 0);
		audio_sound_gain(music_main_theme, 1, 2500);	
	}
}