/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
_menuItems = [
	[
		["alive player", "!(player getVariable ['cuffed', false])"],
		[(localize "STR_RPF_MODULES_PHONE_TITLE"), "[] call ClientModules_Phone_fnc_openPhone",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

RPF_phoneMessages = [];
RPF_phoneContacts = [];

Phone_inited = true;
diag_log "Phone Module inited";