

//Draw shader for white flash when enemy is harmed
draw_self();

if(flash > 0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}
