/// @description Inserir descrição aqui
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if inventario == true{
	var _invx = _guil/2 - inventaria_l/2;
	var _invy = _guia/2 - inventaria_a/2;
	
	draw_sprite_ext(spr_inventario, 0, _invx, _invy  , escala, escala, 0, c_white, 1);
	
	var ix = 0;
	var iy = 0;
	for (var i = 0; i < total_slots; i++){
		var _slotsx = _invx + comeco_x + ((tamanho_slots + buffer) * ix);
		var _slotsy = _invy + comeco_y + ((tamanho_slots + buffer) * iy);
		
		if point_in_rectangle(_mx, _my, _slotsx, _slotsy, _slotsx + tamanho_slots, _slotsy + tamanho_slots){
			draw_sprite_ext(spr_inventario_seletor, 0, _slotsx, _slotsy, escala, escala, 0, c_white, 1);
			
			if keyboard_check_pressed(ord("F")){
				var _Inst = instance_create_layer(obj_personagem.x, obj_personagem.y, "Instances", obj_Item);
				_Inst.sprite_index = grid_items[# Info.Sprite, i];
				_Inst.image_index = grid_items[# Info.Item, i];
				_Inst.qunatidade = grid_items[# Info.Quantidade, i];
				
				// Esvaziando o Slot
				grid_items[# Info.Item, i] = -1;
				grid_items[# Info.Quantidade, i] = -1;
				grid_items[# Info.Sprite, i] = -1;
			}
			
			if mouse_check_button_pressed(mb_left){
				//Caso não tenha itens selecionado
				if item_selecionado == -1{
					item_selecionado = grid_items[# Info.Item, i];
					pos_selecionado = i;
				}//caso tenha itens selecionado
				else{
				// 1- Caso o item selecionado seja igual do slots que iremos colocar
				if item_selecionado == grid_items[# Info.Item, i] and pos_selecionado != i and grid_items[# Info.Sprite, i] == grid_items[# Info.Sprite, pos_selecionado]{
					grid_items[# Info.Quantidade, i] += grid_items[# Info.Quantidade, pos_selecionado];
						
					grid_items[# Info.Item, pos_selecionado] = -1;
					grid_items[# Info.Quantidade, pos_selecionado] = -1;
					item_selecionado = -1;
					pos_selecionado = -1;
				}
				// 2- Caso o slot selecionado estaja vazio
				else if grid_items[# Info.Item, i] == -1{
					grid_items[# Info.Item, i] = grid_items[# Info.Item, pos_selecionado];
					grid_items[# Info.Quantidade, i] = grid_items[# Info.Quantidade, pos_selecionado];
					grid_items[# Info.Sprite, i] = grid_items[# Info.Sprite, pos_selecionado];
						
					grid_items[# Info.Item, pos_selecionado] = -1;
					grid_items[# Info.Quantidade, pos_selecionado] = -1;
					grid_items[# Info.Sprite, pos_selecionado] = -1;
					item_selecionado = -1;
					pos_selecionado = -1;
				}
				// 3- Caso o slot selecionado ja tenha uma item e iremos trocar as posição
				else if grid_items[# Info.Item, pos_selecionado] != grid_items[# Info.Item, i] or grid_items[# Info.Sprite, pos_selecionado] != grid_items[# Info.Sprite, i]{
					var _item = grid_items[# Info.Item, i];
					var _quantidade = grid_items[# Info.Quantidade, i];
					var _spr = grid_items[# Info.Sprite, i];
						
					grid_items[# Info.Item, i] = grid_items[# Info.Item, pos_selecionado];
					grid_items[# Info.Quantidade, i] = grid_items[# Info.Quantidade, pos_selecionado];
					grid_items[# Info.Sprite, i] = grid_items[# Info.Sprite, pos_selecionado];
						
					grid_items[# Info.Item, pos_selecionado] = _item;
					grid_items[# Info.Quantidade, pos_selecionado] = _quantidade;
					grid_items[# Info.Sprite, pos_selecionado] = _spr
						
					item_selecionado = -1;
					pos_selecionado = -1;
				}
			}
		}
	}
		
		var _sprite = grid_items[# Info.Sprite, i];
		//Checando se tem items no slots
		if grid_items[# Info.Item, i] != -1{
			
			//Sprites
			draw_sprite_ext(_sprite, grid_items[# Info.Item, i], _slotsx, _slotsy, escala, escala, 0, c_white, 1 );
			
			//Quantidade
			draw_set_font(fnt_dano);
			draw_set_halign(fa_center);
			draw_text_colour_outline( _slotsx + tamanho_slots, _slotsy + tamanho_slots - 8, grid_items[# Info.Quantidade, i], 4, c_black, 16, 100, 100);
		}
				ix++;
			if	ix >= slots_h{
				ix = 0;
				iy++;
			}
		}
		
			// 4- Largar o Item Selecionadado
			if mouse_check_button_pressed(mb_right){
				item_selecionado = -1;
				pos_selecionado = -1;
			}
		
		if item_selecionado != -1{
			draw_sprite_ext(grid_items[# Info.Sprite, pos_selecionado], item_selecionado, _mx, _my, escala, escala, 0, c_white, 0.5);
		}
	}