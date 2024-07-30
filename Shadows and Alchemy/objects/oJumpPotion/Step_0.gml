if(place_meeting(x,y,forest_tilemap)){
	//direction = direction + 90;
	instance_destroy();
	instance_create_depth(x, y, 0, oJumpPad);
	}
	

	


//while(keyboard_check_pressed(vk_left)){
	if(abs(hsp) < resistence){
		hsp = 0;
	}
	else{
		x += hsp;
		vsp += grv;
		y += vsp;
	
	}
