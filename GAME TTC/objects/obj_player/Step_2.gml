/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Sistema de colisão horizontal E movimentação
var _velh = sign(velh); //1, -1 ou 0

// Deixar o velh positivo SEMPRE
repeat(abs(velh))
{
	//Esse código vai ser repetido a quantidade de vezes que eu tenho no velh
	
	//Checar se o espaço para onde eu vou me mover tem alguém
	if (place_meeting(x + _velh, y, obj_block))
	{
		//O que fazer se colidi com alguém
		velh = 0;
	}
	else//Se NÃO colidir com alguem
	{
		//EU posso me mover
		x += _velh
	}
}

//Sistema de colisão e movimentação vertical
var _velv = sign(velv);

repeat(abs(velv))
{
	if (place_meeting(x, y + _velv, obj_block))
	{
		velv = 0;
	}
	else
	{
		y += _velv
	}
}