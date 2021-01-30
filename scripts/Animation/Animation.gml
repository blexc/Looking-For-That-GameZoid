function Animate()
{
	var _total_frames = sprite_get_number(sprite_index) / 4;
	image_index = local_frame + deg_to_cardinal(direction) * _total_frames;
	local_frame += sprite_get_speed(sprite_index) / FRAMERATE;
	
	if (local_frame >= _total_frames)
	{
		animation_end = true;
		local_frame -= _total_frames;
	}
	else animation_end = false;	
}