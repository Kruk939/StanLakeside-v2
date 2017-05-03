/*
Author: Kerkkoh
First Edit: 22.4.2016
*/
RPF_curDelivery = ["", 0, 0, 0, "", 0];

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'delivery'})", "(RPF_curDelivery select 4) == ''", "(player distance cursorObject) <= 5"],
		["Tasks", "[] call ClientModules_Delivery_fnc_openTakeDelivery",1]
	],
	[
		["!(isNil {cursorObject getVariable 'delivery'})", "(RPF_curDelivery select 4) != ''", "(RPF_curDelivery select 3) != 0", "(player distance cursorObject) <= 5"],
		["Take Items", "[] call ClientModules_Delivery_fnc_openTakeDeliveryItem",1]
	],
	[
		["!(isNil {cursorObject getVariable 'dp1'}) || !(isNil {cursorObject getVariable 'dp2'})", "!(isNil {cursorObject getVariable (RPF_curDelivery select 4)})", "count (attachedObjects player) > 0", "(player distance cursorObject) <= 5"],
		["Deliver", "[] call ClientModules_Delivery_fnc_openDeliverDelivery",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

DeliverySystem_inited = true;
diag_log "Delivery System Module inited";