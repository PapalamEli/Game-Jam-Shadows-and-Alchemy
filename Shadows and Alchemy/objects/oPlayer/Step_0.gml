/// @description For ever step the player makes
// You can write your code in this editor

//get inputs
var _keyRight = keyboard_check(vk_right);
var _keyLeft = keyboard_check(vk_left);
var _keyJump = keyboard_check_pressed(vk_space);

//Works out where the player will move horizontally
hsp = (_keyRight - _keyLeft) * hWalk;

//Works out where the player will move vertically
vsp = vsp + grv;

// works out if the player should jump (if we want jumping)
if(canJump-- > 0) && (_keyJump)
{
	vsp = vspJump;
	canJump = 0;
}

//Collision and movement

if(place_meeting(x + hsp, y, oWall))
{
	while(abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, oWall)) x += hsp;
	}
	hsp = 0;
}
x += hsp;

if(place_meeting(x, y + vsp, oWall))
{
	if(vsp > 0) canJump = 10;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if(!place_meeting(x, y + vsp, oWall)) y += vsp;
	}
	vsp = 0;
}
y += vsp;