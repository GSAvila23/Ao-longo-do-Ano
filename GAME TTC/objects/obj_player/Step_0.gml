/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var up, down, left, right, fire;

up = keyboard_check(ord("W"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));
fire = mouse_check_button_pressed(mb_left);


//Apertei o A left = 1
//Apertei o D right = 0
//velh = (right - left) * max_vel; // -5 


//velv = (down - up) * max_vel;

//Ajutar o movimento 
//Descobrir o para que direção estou me movendo
//Checando se o usuario esta apertando alguma coisa
if (up || down or left || right)
{
	move_dir = point_direction(0, 0, (right-left), (down-up));
	//Ganhar velocidade quando ele começa a se mover
	vel = max_vel;
}
else
{
	vel = lerp(vel, 0, 0.1);
}


//Criando o tiro
if (fire)
{
	var _tiro = instance_create_layer(x, y, "Tiros", obj_tiro);
	_tiro.speed = 10;
	_tiro.direction = point_direction(x, y, mouse_x, mouse_y);
}

//Com base na minha direção eu vou dar a minha velocidade
velh = lengthdir_x(vel, move_dir);
velv = lengthdir_y(vel, move_dir);