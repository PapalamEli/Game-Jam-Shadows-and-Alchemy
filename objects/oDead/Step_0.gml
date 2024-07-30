//
if(done == 0)
{
	vsp = vsp + grv;
	//Horizontal collision
	if(place_meeting(x + hsp, y, forest_tilemap))
	{
		while(!place_meeting(x+sign(hsp),y,forest_tilemap))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;

	//vertical collision
	if(place_meeting(x, y + vsp, forest_tilemap))
	{
		if(vsp > 0) 
		{
			done = 1;
		}
		while(!place_meeting(x,y+sign(vsp),forest_tilemap))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
	
	
}