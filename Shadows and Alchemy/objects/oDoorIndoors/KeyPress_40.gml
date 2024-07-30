/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y, oPlayer) {
	show_debug_message("door entered")
	room_goto_previous()
	oPlayer.x = 2400
	oPlayer.y = 360
}