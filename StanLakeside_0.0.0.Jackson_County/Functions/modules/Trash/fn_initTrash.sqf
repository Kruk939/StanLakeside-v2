Trash_var_loot = [ "np_water", "H_Bandanna_gry", "np_sausage", "np_chickensoup", "G_TacticalPack_blk", "np_psoup", "G_Combat", "np_beefsoup", "np_lettucesoup",
"np_tuna", "np_mpizza", "H_Booniehat_khk_hs", "H_Booniehat_dgtl", "np_spizza", "G_Aviator", "np_happymeal", "G_Diving", "np_bigmac", "Binocular",
"G_Sport_Greenblack", "G_Sport_Checkered", "RH_x300", "U_C_Poor_1", "Press_Mic_AAN_F", "G_Sport_Blackyellow", "np_cheeseburger", "G_Shades_Black",
"U_C_Poloshirt_blue", "np_hotdog", "np_cheesehotdog", "ItemMap", "G_Bandanna_blk", "G_Bandanna_tan", "G_Lady_Blue", "H_Bandanna_Camo", "H_Bandanna_cbr",
"H_Beret_blk", "H_Bandanna_khk"];
Trash_var_money = [10, 20, 30, 40, 50, 100, 150, 50, 150, 150, 150, 50, 150, 200, 50, 300, 50, 500, 50];
Trash_var_enable = 0;
Trash_var_box = "GroundWeaponHolder_Scripted" createVehicleLocal (getpos player);

_menuItems = [
	[
		["alive player", "Trash_var_enable isEqualTo 0", "(animationstate player) != ""AinvPknlMstpSnonWnonDnon_medic_1"" ", "((getModelInfo cursorObject) select 0) isEqualTo ""garbagebags_f.p3d"" ", "(damage cursorObject) != 1" , "(player distance cursorObject) < 2"],
		["Przeszukaj", "[cursorObject] spawn ClientModules_Trash_fnc_searchTrash", 3]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Trash_inited = true; // na koncu
diag_log "Trash Module inited"; // na koncu
