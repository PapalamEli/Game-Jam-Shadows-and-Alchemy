// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


//predicate method for array_find_index in oBasePlant, allows for checking 2d arrays
function ingredient_check(_element, _index)
{
	show_debug_message(_element)
	return (_element != 0)
}