/*
Author: Kerkkoh
First Edit: 22.4.2016
*/

/*_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'buyableThing'})", "(player distance cursorObject) <= 5"],
		["Buy this", "[cursorObject] call ClientModules_ShopSystem_fnc_openPhysicalShop",1]
	],
	[
		["!(isNil {cursorObject getVariable 'shopSystemShop'})", "(player distance cursorObject) <= 5"],
		["Open shop", "[cursorObject] call ClientModules_ShopSystem_fnc_openVirtualShop",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;*/

ShopSystem_inited = true;
diag_log "ShopSystem Module inited";