/// @description Inserir descrição aqui
var _escala = 4.24;
var _guia = display_get_gui_height();
var _spr = sprite_get_height(spr_hud_vida) * _escala;
var _huda = _guia - _spr;

var _vida = obj_personagem.vida;
var _maxvida = obj_personagem.max_vida[obj_personagem.level];

var _estamina = obj_personagem.estamina;
var _maxestamina = obj_personagem.max_estamina[obj_personagem.level];

var _xp = obj_personagem.xp;
var _maxxp = obj_personagem.max_xp[obj_personagem.level]

var _xpa = sprite_get_height(spr_hud_exp) * _escala;


//HUD
draw_sprite_ext(spr_hud_vida, 0, 0, _huda, _escala, _escala, 0, c_white, 1);

//Barra de Vida
draw_sprite_ext(spr_hud_barra_vida, 0, 0, _huda, (_vida/_maxvida) * _escala, _escala, 0, c_white, 1);

//Barra de Estamina
draw_sprite_ext(spr_hud_barra_estamina, 0, 0, _huda + 34, (_estamina/_maxestamina) * _escala, _escala, 0, c_white, 1);



//Barra de XP
draw_sprite_ext(spr_hud_exp_barra, 0, 12, _guia - _xpa + 10, (_xp/_maxxp) * _escala, _escala, 0, c_white, 1);
draw_sprite_ext(spr_hud_exp, 0, 0, _guia - _xpa - 2, _escala, _escala, 0, c_white, 1);
