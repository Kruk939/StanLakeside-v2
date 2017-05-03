/*
Author: Kerkkoh
First Edit: 20.4.2016

Farming module, to try cut  plantae you must edit Functions\fn_tryCutPlantae.sqf
*/
RPF_farmGroundTypes = [
	"#k_rock"
];

RPF_plantTypes = [
	"RPF_Plant_Olive",
	"RPF_Plant_Poppy",
	"vvv_cannabis1_plan"
];

RPF_currentSeed = nil;
RPF_plantArray = [];

_usables = [
	["RPF_Items_PoppySeed", "['RPF_Items_PoppySeed']call ClientModules_Farming_fnc_plantPlantae"],
	["RPF_Items_OliveSeed", "['RPF_Items_OliveSeed']call ClientModules_Farming_fnc_plantPlantae"]
];
{
	RPF_Usables pushBack _x;
}forEach _usables;

_menuItems = [
	[
		["(typeof CurrentCursorTarget) in RPF_plantTypes", "CurrentCursorTarget in RPF_plantArray", "player distance CurrentCursorTarget < 3"],
		["Sprawdz roślinę", "[CurrentCursorTarget] call ClientModules_Farming_fnc_checkPlantae",3]
	],

	[
		["(typeof CurrentCursorTarget) in RPF_plantTypes", "CurrentCursorTarget in RPF_plantArray","CurrentCursorTarget getVariable [""growing"",false]","CurrentCursorTarget getVariable [""ready"",false]","player distance CurrentCursorTarget < 3"],
		["Zetnij roślinę", "[CurrentCursorTarget] call ClientModules_Farming_fnc_tryCutPlantae",3]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Farming_inited = true;
diag_log "Farming Module inited";
