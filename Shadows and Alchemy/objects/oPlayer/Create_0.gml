/// @description Defining Variables
// You can write your code in this editor

hp = 3; //health points
grv = 0.2; //gravity
hsp = 0; //horizontal speed
vsp = 0; //vertical speed
hWalk = 3.5; // walk speed
vspJump = -6; // jump speed
canJump = 0; // for if the player is touching the ground

throwDelay = 0; //delay before player can throw potion again;
potionNumBomb = 5; //value for how many bomb potions the player is carrying
potionNumJump = 3; //value for how many jump potions the player is carrying
forest_tilemap = layer_tilemap_get_id("forest_tilemap_grass"); //allows tilemap to be passed as variable for collisions

tile_floor_indoors = layer_tilemap_get_id("tile_floor_indoors")

