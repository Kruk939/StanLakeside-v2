/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
private["_menuItems"];
_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'methLab'})", "isNil {cursorObject getVariable 'buyableThing'}", "(player distance cursorObject) <= 3"],
		["Open Lab", "[cursorObject] call ClientModules_methLab_fnc_openMethLab",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
} forEach _menuItems;

//RPF_ItemNames pushBack ["OfficeTable_01_new_F", "Meth Lab"];

player addEventHandler["handleDamage", { _this spawn ClientModules_medical_fnc_handleDamage; false } ];
medical_myHealth = 0;
medical_deadPlayer = false;
medical_istazed = false;
medical_bleedingEffect = 0;
player setVariable["medical_deadPlayer",false,true];
player setVariable["medical_playerInjuries", [0,0,0,0,0,0,0,0,0,0,0], true];



//Init serwerowy


medical_inited = true;
diag_log "Medical Module inited";
