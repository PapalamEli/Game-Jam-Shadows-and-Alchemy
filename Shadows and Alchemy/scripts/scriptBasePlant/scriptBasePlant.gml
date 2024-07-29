// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


//predicate method for array_find_index in oBasePlant, allows for checking 2d arrays
function ingredient_check(_element, _index)
{
	//show_debug_message(_element)
	show_debug_message(oInventory.ingredient_inventory[_index, 0])
	show_debug_message(oInventory.current_plant)
	if oInventory.ingredient_inventory[_index, 0] == oInventory.current_plant  {
		return(true)
	}
	else {
		return(false)
	}
	
}