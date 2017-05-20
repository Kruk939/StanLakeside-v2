gangList = ["76561198061433788"];

randomPistol = ["hgun_Pistol_heavy_01_f", "RH_m9", "RH_gsh18", "RH_p226", "RH_g17", "RH_g19", "RH_g18", "RH_tec9", "RH_fn57", "RH_usp", "RH_m1911", "RH_kimber",
"hgun_ACPC2_F", "RH_fnp45t"];
randomLong = ["SMG_01_F", "SMG_02_F", "RH_sbr9_des", "RH_sbr9_wdl", "RH_sbr9_wdl", "AG_MP9_folded_digi", "AG_MP9_folded_sand"]; // do dokonczenia

_menuItems = [
	[
		["alive player"],
		["Kup losowy pistolet", "[] call ClientModules_Gangs_fnc_randWeapon", 3]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Gangs_inited = true; // na koncu
diag_log "Gangs Module inited"; // na koncu
