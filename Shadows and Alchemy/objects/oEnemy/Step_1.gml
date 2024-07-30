
//Determines where enemy will land when they die.
if(hp <= 0)
{
	with(instance_create_layer(x,y,layer,oDead))
	{
		direction = other.hitFrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction);
		image_xscale = sign(hsp);
	}
	
	instance_destroy();
}
