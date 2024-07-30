
	//When the object meets the tilemap, the stance will be destroyed
	//Will change some once there is a need for animation
	if(place_meeting(x,y,forest_tilemap)){
	//direction = direction + 90;
	instance_destroy();
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
//}


	

//else if(xprevious > x)
//{
//	if(abs(hsp) > resistence){
//		hsp = 0;
//	}
//	else{
//		x -= hsp
//		vsp += grv;
//		y += vsp;
//		}

//}
//else{
//	if(abs(hsp) > resistence){
//		hsp = 0;
//	}
//	else{
//		x -= hsp
//		vsp += grv;
//		y += vsp;
//		}
//}

