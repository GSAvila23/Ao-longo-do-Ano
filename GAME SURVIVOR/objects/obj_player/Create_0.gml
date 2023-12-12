 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



//Iniciando primeiro estado
estado_idle   = new estado();

//Iniciando o estado Walk
estado_walk   = new estado();

//Iniciando o estado de ataque
estado_attack = new estado();

#region Estado_idle
//meu estado idle precisa de um inicia
estado_idle.inicia = function()
{
	//Definindo a sprite atual que com base na direção que eu to olhando
	var _sprite = define_sprite(dir, spr_player_idle_side, spr_player_idle_front, spr_player_idle_back);
	
	//Ajustando a Sprite
	sprite_index = _sprite;
	
	//Garantindo que animação começa no primeiro frame
	image_index = 0;
}


estado_idle.roda = function()
{
	//Achando a condição para eu SAIR desse estado
	
	//Se eu estiver em movimento, então eu vou para estado Walk
	if (up xor down or left xor right)
	{
		troca_estado(estado_walk);
	}
	
	//Condição para ir para o estado de ataque
	if (attack)
	{
		troca_estado(estado_attack)
	}
}

#endregion

#region Estado_walk
estado_walk.inicia = function()
{
	dir    = (point_direction(0, 0, right - left, down - up) div 90);
	//Definindo a sprite
	
	//Configurando a Sprite
	sprite_index = define_sprite(dir, spr_player_walk_side, spr_player_walk_front, spr_player_walk_back);
	
	//Começando a animação do começo
	image_index = 0;
}

estado_walk.roda = function()
{
	
	dir    = (point_direction(0, 0, velh, velv) div 90);
	//Condição para SAIR do estado
	//Se eu estou parado eu vou para o estado idle
	
	
	//Ajustando o lado que ele olha
	if (velh != 0)
	{
		image_xscale = sign(velh);
	}
	
	//Definindo a sprite
	sprite_index = define_sprite(dir,spr_player_walk_side, spr_player_walk_front, spr_player_walk_back);
	
	//Movimentação
	velv   = (down - up) * vel;

	//Fazendo a Velocidade Horizontal
	velh   = (right - left) * vel;
	
	if (velh == 0 && velv == 0)
	{
		troca_estado(estado_idle);
	}
	
	//Indo para o estado ataque
	if (attack)
	{
		troca_estado(estado_attack);
	}
}

#endregion

#region estado_ataque

estado_attack.inicia = function()
{
	//Definindo a sprite dele
	sprite_index = define_sprite(dir, spr_player_attack_side, spr_player_attack_front,spr_player_attack_back);
	
	image_index  = 0;
	
	velh = 0;
	velv = 0;
}

//Configurando o estado de ataque
estado_attack.roda = function()
{
	
	//Saindo do ataque quando ele acabar
	if (image_index >= image_number-0.2)
	{
		//Indo para estado parado
		troca_estado(estado_idle);
	}
}

#endregion

//Iniciar variaveis
#region Iniciando Variaveis
//Controles estão sendo iniciados sem valor
up     = noone;
down   = noone;
left   = noone;
right  = noone;
attack = noone;

//Variaveis de Movimento
//Iniciando parado
velh = 0;
velv = 0;

//Velocidade do jogador
vel = 2;

//Controlando que direção o Player esta olhando
dir = 0;

#endregion


//Iniciando minha maquina de estado
inicia_estado(estado_idle);