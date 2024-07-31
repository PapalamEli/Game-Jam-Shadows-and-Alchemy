

//Works out where the player will move vertically
vsp = vsp + grv;

var dist = point_distance(oPlayer.x, oPlayer.y, oEnemy.x, oEnemy.y);


//Collision and movement
show_debug_message(dist);
show_debug_message(current_pos);

//Enemy detection when at a certain distance
if(dist < 500){
	hsp = -1
}
else{
	
	hsp = 0;
	if(current_pos > oEnemy.x){
		hsp = 1;
	}

}

if(place_meeting(x + hsp, y, oBaseCollision))
{
	while(abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, oBaseCollision)) x += hsp;
	}
	hsp = 0;
}

if(place_meeting(x, y + vsp, oBaseCollision))
{
	if(vsp > 0) canJump = 10;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if(!place_meeting(x, y + vsp, oBaseCollision)) y += vsp;
	}
	vsp = 0;
}

// mostly same code as above, except its for the tilemap
	if(place_meeting(x + hsp, y, forest_tilemap))
	{
		while(abs(hsp) > 0.1)
		{
			hsp *= 0.5;
			if (!place_meeting(x + hsp, y, forest_tilemap)) x += hsp;
		}
		hsp = 0;
	}
	x += hsp;


	if(place_meeting(x, y + vsp, forest_tilemap))
	{
		if(vsp > 0) canJump = 10;
		while (abs(vsp) > 0.1)
		{
			vsp *= 0.5;
			if(!place_meeting(x, y + vsp, forest_tilemap)) y += vsp;
		}
		vsp = 0;
	}

// keep this block after any collision checks, to ensure the player does not clip
x += hsp;
y += vsp;