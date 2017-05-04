/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
private["_menuItems"];
_menuItems = [
	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (myjob == ""EMS"" || myJob == ""Fire"")"],
		["Reanimuj", "['Reanimacja',15,client_fnc_sendRevive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask; paycheck = paycheck + 125;",1]
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
