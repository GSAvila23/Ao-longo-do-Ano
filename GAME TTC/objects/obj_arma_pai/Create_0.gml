/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Deixando o cajado menor
image_xscale = 0.5;
image_yscale = 0.5;

//Velocidade do Tiro
//Delay do Tiro
//Tiro
atirar = true

//Delay para atirar
delay_tiro = 0

//Criando o metodo para atirar
atirando = function()
{
	//Olhan para o mouse
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	if (atirar)
	{
		//Criando tiro dentro do intervalo
		delay_tiro--;
		if (delay_tiro <= 0)
		{
			//Resetando o delay do tiro
			delay_tiro = espera_tiro * room_speed;
			//Atirando
			
			
			
			//Achando a posição para criar meu tiro
			var _x = lengthdir_x(sprite_width, image_angle);
			var _y = lengthdir_y(sprite_width, image_angle);
			
			var _tiro = instance_create_layer(x + _x, y + _y, layer, tiro);
			//Dando velocidade para o tiro
			_tiro.speed = velocidade;
			//Definido a direção do tiro
			_tiro.direction = image_alpha;
		}
	}
}




