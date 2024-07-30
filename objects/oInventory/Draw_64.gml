/// @description Insert description here
// You can write your code in this editor

//draws in the inventory slots
draw_sprite(sInventorySlot,0, 25, 25)
draw_sprite(sInventorySlot,0, 125, 25)
draw_sprite(sInventorySlot,0, 225, 25)
draw_sprite(sInventorySlot,0, 325, 25)
draw_sprite(sInventorySlot,0, 425, 25)

//draws in existing plants 
for (i = 0; i < array_length(ingredient_inventory); i += 1) {
	

	// switch case for all different ingredients, allows for different orders of plants being picked up
	//if adding new plant, put plant_name as case constant, and put sprite in draw sprite
	//will edit code to enlarge sprites later
	switch (ingredient_inventory[i,0]) {
		case "oBasePlant":
			
			//draws in different inventory slot depending on order picked up
			draw_sprite(sBasePlant, 0, 33 + (i * 100), 57)
			//draws amount in top left corner, perfectly coded so do not touch
			draw_text( 33 + (i * 100), 28, ingredient_inventory[i,1])
		break
		
		case "agaric":
			
			//draws in different inventory slot depending on order picked up
			draw_sprite(_tofly_agaric_32, 0,58 + (i * 100), 57)
			//draws amount in top left corner, perfectly coded so do not touch
			draw_text(  33 + (i * 100), 28, ingredient_inventory[i,1])
		break
		
		case "bluelotus":
			
			//draws in different inventory slot depending on order picked up
			draw_sprite(blue_lotus_32, 0, 58 + (i * 100), 57)
			//draws amount in top left corner, perfectly coded so do not touch
			draw_text(  33 + (i * 100), 28, ingredient_inventory[i,1])
		break
		
		case "chamomile":
			
			//draws in different inventory slot depending on order picked up
			draw_sprite(chamomile_32, 0, 58 + (i * 100), 57)
			//draws amount in top left corner, perfectly coded so do not touch
			draw_text(  33 + (i * 100), 28, ingredient_inventory[i,1])
		break
		
		case "dandelion":
			
			//draws in different inventory slot depending on order picked up
			draw_sprite(dandelion_32, 0, 58 + (i * 100), 57)
			//draws amount in top left corner, perfectly coded so do not touch
			draw_text(  33 + (i * 100) , 28, ingredient_inventory[i,1])
		break
		
		case "sage":
			
			//draws in different inventory slot depending on order picked up
			draw_sprite(sage_32, 0, 58 + (i * 100), 57)
			//draws amount in top left corner, perfectly coded so do not touch
			draw_text(  33 + (i * 100) , 28, ingredient_inventory[i,1])
		break
	}
	
}