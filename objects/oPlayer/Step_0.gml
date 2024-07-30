/// @description For ever step the player makes
// You can write your code in this editor

//get inputs
var _keyRight = keyboard_check(vk_right);
var _keyLeft = keyboard_check(vk_left);
var _keyJump = keyboard_check_pressed(vk_space);
var _keyThrow = keyboard_check_pressed(ord("Z"));
var _keyJumpPotion = keyboard_check_pressed(ord("X"));

//Works out where the player will move horizontally
if(canJump-- > 0){
hsp = (_keyRight - _keyLeft) * hWalk;
}
//Works out where the player will move vertically
vsp = vsp + grv;



//Collision and movement

// we will want to move away from instances and go on to tilemaps, once ready, remove this piece of code
//if(place_meeting(x + hsp, y, oBaseCollision))
//{
//	while(abs(hsp) > 0.1)
//	{
//		hsp *= 0.5;
//		if (!place_meeting(x + hsp, y, oBaseCollision)) x += hsp;
//	}
//	hsp = 0;
//}

//if(place_meeting(x, y + vsp, oBaseCollision))
//{
//	if(vsp > 0) canJump = 10;
//	while (abs(vsp) > 0.1)
//	{
//		vsp *= 0.5;
//		if(!place_meeting(x, y + vsp, oBaseCollision)) y += vsp;
//	}
//	vsp = 0;
//}


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


if((place_meeting(x, y + vsp, forest_tilemap)) || (place_meeting(x, y + vsp, oJumpPad)))
{
	if(vsp > 0) canJump = 10;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if(!place_meeting(x, y + vsp, forest_tilemap)) y += vsp;
	}
	vsp = 0;
}

// If the player jumps while on a jump pad, they will jump higher, otherwise they will jump normally.
if(place_meeting(x, y + vsp, oJumpPad) && _keyJump)
{
	vsp = -10;
}
else{
	
	if(canJump-- > 0) && (_keyJump)
	{
		throwDelay = 7;
		vsp = vspJump;
		canJump = 0;
	}
}


throwDelay = throwDelay - 0.1;


//Throw potion after combining

if(_keyThrow && (potionNumBomb > 0 or potionNumJump > 0) && (throwDelay < 0))
{
	
	throwDelay = 5;
	instance_create_depth(x, y, -100, oPotion)
	
	potionNumBomb -= 1;
	
	

}

if(_keyJumpPotion && (potionNumJump > 0) && (throwDelay < 0))
{
	
	throwDelay = 5;
	instance_create_depth(x, y, -100, oJumpPotion)
	
	potionNumJump -= 1;
	
}

// keep this block after any collision checks, to ensure the player does not clip
x += hsp;
y += vsp;