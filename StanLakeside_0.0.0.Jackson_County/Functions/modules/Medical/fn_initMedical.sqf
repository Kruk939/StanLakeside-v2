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

medical_updateTime = 30; //Co ile sekund synchronizuje sie z serwerem od otrzymania obrazen

player addEventHandler["handleDamage", { _this spawn ClientModules_medical_fnc_handleDamage; false } ];
medical_myHealth = 0;
medical_deadPlayer = false;
medical_istazed = false;
medical_bleedingEffect = 0;
medical_lastUpdate = time;
medical_selected_user = objNull;
medical_imHealing = false;
medical_im_dead = false;
player setVariable["medical_deadPlayer",false,true];
player setVariable["medical_playerInjuries", [0,0,0,0,0,0,0,0,0,0,0], true];
player setVariable["medical_playerInjuries_toUpdate", [0,0,0,0,0,0,0,0,0,0,0], false];



//Init serwerowy


medical_inited = true;
diag_log "Medical Module inited";
