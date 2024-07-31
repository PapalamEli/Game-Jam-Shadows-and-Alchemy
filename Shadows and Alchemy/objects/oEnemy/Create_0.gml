/// @description Insert description here
// You can write your code in this editor

grv = 0.2; //gravity

vsp = 0; //vertical speed
hWalk = 2; // walk speed
hsp = hWalk; //horizontal speed
vspJump = -6; // jump speed
canJump = 0; // for if the player is touching the ground

hp = 3;
flash = 0;
hitFrom = 0; //For when the enemy is hit at different angles

current_pos = oEnemy.x;

//variable for check if player is dead
player_dead = false


forest_tilemap = layer_tilemap_get_id("forest_tilemap_grass"); //allows tilemap to be passed as variable for collisions