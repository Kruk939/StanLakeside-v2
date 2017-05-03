paycheck = 0;

_menuItems = [
	[
		["paycheck != 0", "typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F""]"],
		["Odbierz wypłatę", "[] call ClientModules_Paycheck_fnc_getPaycheck",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;


Paycheck_inited = true;
diag_log "Paycheck Module inited";

if (Paycheck_inited) exitWith {sleep 300; [] call ClientModules_Paycheck_fnc_startPaychecking;};