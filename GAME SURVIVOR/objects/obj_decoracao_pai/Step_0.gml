/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Ajustando Profundidade
depth = -bbox_bottom;


if (tranparencia)
{
	//Ficando Transparente quando o Player passa por tras de min
	//Checando se o Player existe
	if (instance_exists(obj_player))
	{
		//Checando se o player esta mais de que eu
		if (obj_player.y < y)
		{
			//Checando se o player esta mais ou meno atras de min
			if (point_in_rectangle(obj_player.x, obj_player.y, bbox_left - 10, bbox_top - 25, bbox_right + 10, bbox_top))
			{
				//Ficando Transparente
				image_alpha = lerp(image_alpha, .5, .05);
			}
			else
			{
				image_alpha = lerp(image_alpha, 1, .1);
			}
		}
	}
}