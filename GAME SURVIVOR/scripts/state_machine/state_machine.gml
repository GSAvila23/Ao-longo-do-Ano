// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//Iniciando a Maquina de Estado
function estado() constructor
{
	//Iniciando o Estado
	static inicia = function() {};
	//Rodando o Estado
	static roda = function() {};
	//Finalizando o Estado
	static finaliza = function() {};
}

//Funções para cotrolar maquina de estado
//Iniciando o estado
function inicia_estado(_estado)
{
	//Salvando o estado passado em uma variavel
	estado_atual = _estado;
	
	//Iniciando o estado atual
	estado_atual.inicia();
}

//Roda o estado
function roda_estado()
{
	estado_atual.roda();
}

//Trocando de estado
function troca_estado(_estado)
{
	//Finalizandoo estado atual
	estado_atual.finaliza();
	
	//Rodandoo proximo estado
	estado_atual = _estado;
	
	//Iniciando o proximo estado
	estado_atual.inicia();
}


//Definindo a sprite
function define_sprite(_dir = 0, _sprite_side, _sprite_front, _sprite_back)
{
	var _sprite;
	
	switch(_dir)
	{
		case 0: _sprite = _sprite_side; break;
		case 1: _sprite = _sprite_back; break;
		case 2: _sprite = _sprite_side; break;
		case 3: _sprite = _sprite_front; break;
	}
	
	return _sprite;
}