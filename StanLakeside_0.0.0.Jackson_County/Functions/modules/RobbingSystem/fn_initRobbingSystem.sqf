diag_log "robbing 0";
RPF_StoreList = ["Land_fs_roof_F","Land_Shop_DED_Shop_01_F","Land_Shop_DED_Shop_02_F","Land_buildingBar1","Land_Market_DED_Market_01_F","land_cg_dexters","Land_Coffee_DED_Coffee_02_F","Land_Coffee_DED_Coffee_01_F","Land_buildingGunStore1","land_cg_dunkinbronuts"];
RPF_currentlyRobbing = false;
RPF_VaultDoor = false;
RPF_Drill = objNull;
RPF_DrillStopped = false;
RPF_readyTakeCash = false;
diag_log "robbing 1";

_menuItems = [
	[
		["(typeof CursorTarget) IN RPF_StoreList", "((time - (CursorTarget getVariable[""lastRobbed"",0])) > 600)", "(player distance cursorTarget < 8)", "(currentWeapon player != """")"],
		["Okradnij sklep", " [cursorTarget] spawn ClientModules_RobbingSystem_fnc_startRobStore; ",4]
	],

	[
		["RPF_DrillStopped"],
		["Napraw wiertło", "[] spawn ClientModules_RobbingSystem_fnc_repairDrill",5]
	],

	[
		["RPF_readyTakeCash"],
		["Zbierz pieniądze", "[] spawn ClientModules_RobbingSystem_fnc_takeCash",5]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
diag_log "robbing 2";

RobbingSystem = true;
diag_log "RobbingSystem Module inited";