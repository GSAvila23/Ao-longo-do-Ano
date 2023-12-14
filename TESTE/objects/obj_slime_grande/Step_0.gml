/// @description Inserir descrição aqui

event_inherited();

var _x = x+(random_range(1,30))
var _x2 = x-(random_range(1,30))
var _y = y-(random_range(1,30))
var _y2 = y+(random_range(1,30))

if vida <= 0{
	instance_destroy();
	repeat(3){
	instance_create_layer(choose(_x, _x2),choose(_y, _y2),"instances", obj_slime);
	}
	effect_create_above(ef_cloud,x ,y,0.5,c_white);
}