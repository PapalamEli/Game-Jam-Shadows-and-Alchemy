/// @description Insert description here
// You can write your code in this editor

//checks if player is in contact with instance
if place_meeting(x, y, oPlayer)
{

	//uses predicate method in scriptBasePlant
	//finds index of pre-existing plant (if there is one)
	ingredient_index = array_find_index(oInventory.ingredient_inventory, ingredient_check)
	
	//check if plant already present in inventory
	if ingredient_index != -1 {
		
		//if so, check if reached max inventory size
		if oInventory.ingredient_inventory[int64(ingredient_index), 1 ] < 5 {
			
			//if so, add 1 to amount
			oInventory.ingredient_inventory[int64(ingredient_index), 1 ] += 1
			instance_destroy()
		}
		//if inventory full, do not do anything (avoids destroying instance)

	}
	
	//if no previous entry of this ingredient exists, create new entry for it, and add one to its count
	else {
		array_index = array_length(oInventory.ingredient_inventory)
		oInventory.ingredient_inventory[array_index,0] = plant_name
		oInventory.ingredient_inventory[ array_index, 1 ] = 1
		instance_destroy()
	}
			//include for testing
	//show_debug_message(oInventory.ingredient_inventory)
}


