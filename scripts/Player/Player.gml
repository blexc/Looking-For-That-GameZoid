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
			xvelocity = 0
		}
		x += xvelocity;
		
		// check for y collision
		if (solid_at(id, x, y + yvelocity))
		{
			while (!solid_at(id, x, y + sign(yvelocity))) y += sign(yvelocity);
			yvelocity = 0
		}
		y += yvelocity;
	}
}