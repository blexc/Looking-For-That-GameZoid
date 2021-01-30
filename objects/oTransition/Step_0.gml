/// @description fade

if (mode != TRANS_MODE.OFF)
{
	percent = (mode == TRANS_MODE.INTRO)	?
		max(0, percent - 0.05)				: // fading in
		min(1, percent + 0.05)				; // fading out
	
	if (percent == 1 || percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;			
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;			
			}
		}
	}
}
