/// @description For ever step the player makes
// You can write your code in this editor

//get inputs
var _keyRight = keyboard_check(vk_right);
var _keyLeft = keyboard_check(vk_left);
var _keyJump = keyboard_check_pressed(vk_space);

//Works out where the player will move horizontally
if(canJump-- > 0){
hsp = (_keyRight - _keyLeft) * hWalk;
}
//Works out where the player will move vertically
vsp = vsp + grv;

// works out if the player should jump (if we want jumping)
if(canJump-- > 0) && (_keyJump)
{
	vsp = vspJump;
	canJump = 0;
}

//Collision and movement

// we will want to move away from instances and go on to tilemaps, once ready, remove this piece of code
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




// mostly same code as above, except its for the 2nd tilemap

// keep this block after any collision checks, to ensure the player does not clip
x += hsp;
y += vsp;