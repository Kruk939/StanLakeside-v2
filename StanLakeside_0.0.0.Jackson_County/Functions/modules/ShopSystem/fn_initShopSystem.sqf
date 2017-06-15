ShopSystem_inited = false;
private["_menuItems"];
/*_menuItems = [
	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (myjob == ""EMS"" || myJob == ""Fire"")"],
		["Reanimuj", "['Reanimacja',15,ClientModules_Medical_fnc_revive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask; paycheck = paycheck + 125;",1]
	]
];
*/
_menuItems = [];

{
	RPF_InteractionMenuItems pushBack _x;
} forEach _menuItems;

//Init serwerowy
//[player, getPlayerUID player] remoteExec ["ServerModules_Medical_fnc_startInit",2];
