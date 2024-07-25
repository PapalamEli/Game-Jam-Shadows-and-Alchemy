
if (instance_exists(oPlayer)) {
    var player_x = oPlayer.x;
    var player_y = oPlayer.y;

    // Define the view in the room you want to control
    var view_id = 0; 

    // Calculate the new camera position based on the player's position
    var new_view_x = player_x - view_wview[view_id] / 2;
    var new_view_y = player_y - view_hview[view_id] / 2;

    // Update the camera view position
    camera_set_view_pos(view_camera[view_id], new_view_x, new_view_y);
}

// place into room and enjoy