/// @description Defining Variables
// You can write your code in this editor


grv = 0.2; //gravity
hsp = 0; //horizontal speed
vsp = 0; //vertical speed
hWalk = 3.5; // walk speed
vspJump = -6; // jump speed
canJump = 0; // for if the player is touching the ground
forest_tilemap = layer_tilemap_get_id("forest_tilemap_grass"); //allows tilemap to be passed as variable for collisions
tile_floor_indoors = layer_tilemap_get_id("tile_floor_indoors")