/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
_menuItems = [
	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (myjob == ""EMS"" || myJob == ""Fire"")"],
		["Reanimuj", "['Reanimacja',15,client_fnc_sendRevive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask; paycheck = paycheck + 125;",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

//RPF_ItemNames pushBack ["OfficeTable_01_new_F", "Meth Lab"];

player addEventHandler["handleDamage", { _this spawn ClientModules_Medical_fnc_handleDamage; false } ];

RPF_myHealth = 0;
RPF_deadPlayer = false;
RPF_istazed = false;
RPF_bleedingEffect = 0;
RPF_respawn_timer = 0;

player setVariable["medical_deadPlayer",false,true];



//Init serwerowy


medical_inited = true;
diag_log "Medical Module inited";
