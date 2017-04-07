/*
Author: Kerkkoh
First Edit: 7.9.2016

Type: Default Module
*/	
_menuItems = [
	[
		["(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F""] || str CurrentCursorTarget find ""mcl_atm"" > -1)"],
		["Open ATM", "[] call ClientModules_fnc_openATM",3]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
