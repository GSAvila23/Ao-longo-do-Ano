/// @description Inserir descrição aqui
enum Armas{
	Espada,
	Arco,
	Altura
}

//Movimentação
direita = -1;
cima = -1;
esquerda = -1;
baixo = -1;

hveloc = 0;
vveloc = 0;

veloc = 2;
veloc_dir = -1;

dir = 0;

//Dash
dash_dir = -1;
dash_veloc = 6;

//Estado
estado = scr_personagem_andando;

//Combate
level = 1;
xp = 0;
max_xp[1] = 100;
max_xp[2] = 120;
max_xp[3] = 180;
max_xp[4] = 240;
max_xp[5] = 300;

#region STAMINA

max_estamina[1] = 100
max_estamina[2] = 111
max_estamina[3] = 212
max_estamina[4] = 332
max_estamina[5] = 456
estamina = max_estamina[level];

#endregion

#region VIDA

max_vida[1] = 10;
max_vida[2] = 22;
max_vida[3] = 35;
max_vida[4] = 41;
max_vida[5] = 59;
vida = max_vida[level];

#endregion

#region DANO

dano[1] = 1;
dano[2] = 2;
dano[3] = 3;
dano[4] = 4;
dano[5] = 5;

#endregion

tomardano = true;
empurrar_dir = 0;

atacar = false;

dano_alfa = -1;

arma = 0;