/// @description Inserir descrição aqui
inventario = false;
escala = 4;

comeco_x = 15 * escala;
comeco_y = 24 * escala;

slots_h = 8;
slots_v = 3;
total_slots = slots_h * slots_v;
tamanho_slots = 16 * escala;
buffer = 1 * escala;

item_selecionado = -1;
pos_selecionado = -1

inventaria_l = sprite_get_height(spr_inventario) * escala;
inventaria_a = sprite_get_width(spr_inventario) * escala;

enum Items_Armas{
	Espada,
	Arco,
	Cajado,
	Altura
}
	
enum Items_Inimigos{
	SlimeParte,
	OrcCapacete,
	OrcDente,
	Altura
}

enum Info{
	Item,
	Quantidade,
	Sprite,
	Altura
}

grid_items = ds_grid_create(Info.Altura, total_slots);
ds_grid_set_region(grid_items, 0, 0, Info.Altura - 1, total_slots - 1, -1);
ds_grid_add_item(Items_Armas.Espada,			1,	spr_items_armas);
ds_grid_add_item(Items_Armas.Arco,			   16,	spr_items_armas);
ds_grid_add_item(Items_Armas.Cajado,		   39,	spr_items_armas);
ds_grid_add_item(Items_Inimigos.SlimeParte,		1,	spr_items_inimigos);
ds_grid_add_item(Items_Inimigos.OrcCapacete,	1,	spr_items_inimigos);
ds_grid_add_item(Items_Inimigos.OrcDente,		1,	spr_items_inimigos);
ds_grid_add_item(Items_Inimigos.SlimeParte,		1,	spr_items_inimigos);