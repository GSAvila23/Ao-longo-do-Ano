/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Ajustande profundidade
depth = -y;

//Pegando os inputs do usuário
up     = keyboard_check(vk_up) or keyboard_check(ord("W"));
down   = keyboard_check(vk_down) or keyboard_check(ord("S"));
right  = keyboard_check(vk_right) or keyboard_check(ord("D"));
left   = keyboard_check(vk_left) or keyboard_check(ord("A"));
attack = keyboard_check_pressed(vk_space) or keyboard_check(ord("J"));

//Aplicando os inupts á velociade
//O resultado da conta vai ser 0, -1 ou 1



//Ajustando direção com base que na direção que ele ta indo



//Rodando estado a minha máquina de estado
roda_estado();


if keyboard_check(vk_escape)
{
	game_end();
}