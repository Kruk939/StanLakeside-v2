/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
params ["_items", "_clothes", "_weapons", "_house", "_mayor", "_prison"];

removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

if ((count _weapons) > 0) then {
	{
		switch (_x select 0) do {
			case 0: {
				player addWeapon (_x select 1);
				player addPrimaryWeaponItem ((_x select 2) select 0);
				{player addPrimaryWeaponItem _x;}count (_x select 3);
				player setAmmo [primaryWeapon player, (_x select 4)];
			};
			case 1: {
				player addWeapon (_x select 1);
				player addSecondaryWeaponItem ((_x select 2) select 0);
				{player addSecondaryWeaponItem _x;}count (_x select 3);
				player setAmmo [secondaryWeapon player, (_x select 4)];
			};
			case 2: {
				player addWeapon (_x select 1);
				player addHandgunItem ((_x select 2) select 0);
				{player addHandgunItem _x;}count (_x select 3);
				player setAmmo [handgunWeapon player, (_x select 4)];
			};
		};
	}forEach _weapons;
};

player addUniform (_clothes select 0);
player addVest (_clothes select 1);
player addBackpack (_clothes select 2);
player addHeadgear (_clothes select 3);

{player addItemToUniform _x}count (_items select 0);
{player addItemToVest _x}count (_items select 1);
{player addItemToBackpack _x}count (_items select 2);
{player addItem _x; player assignItem _x}count (_items select 3);

_houselevel = player getvariable ["houselevel", 0];
_cop = player getvariable ["copoffduty", 0];
_ems = player getvariable ["emsoffduty", 0];
_fire = player getvariable ["fireoffduty", 0];
_mafia = player getvariable ["mafiaoffduty", 0];
_legal = player getvariable ["legaloffduty", 0];
_higherup = false;

if(_mafia isEqualTo 10) then {_house = getpos nearestObject [[9842.84,3677.44,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_mafia isEqualTo 9) then { _house = getpos nearestObject [[9736.28,3629.54,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_cop isEqualTo 10) then {_house = getpos nearestObject [[9626,3578.7,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_cop isEqualTo 9) then { _house = getpos nearestObject [[9516.43,3526.09,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_ems isEqualTo 10) then { _house = getpos nearestObject [[9412.31,3479.1,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_ems isEqualTo 9) then { _house = getpos nearestObject [[9306.67,3430.66,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_legal isEqualTo 10) then { _house = getpos nearestObject [[9188.22,3371.8,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_legal isEqualTo 9) then { _house = getpos nearestObject [[9094.99,3324.16,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_legal isEqualTo 8) then { _house = getpos nearestObject [[8984.55,3274.12,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_mayor) then { 
	_house = getpos nearestObject [[9949.03,3732.87,0.00143814], "Land_vvv_np_maison1"]; _higherup = true;
	RPF_Mayor = true;
};

switch (_houselevel) do {
	case 1: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Moja Klitka";};
	case 2: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Moja Klitka";};
	case 3: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Moja Klitka";};
	case 4: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Mój Dom";};
	case 5: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Mój Dom";};
	case 6: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Mój Dom";};
	case 7: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Moja Willa";};
	case 8: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Moja Willa";};
	case 9: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Moja Willa";};
	case 10: {deletemarkerlocal "myhouse"; _marker = createMarkerLocal ["myhouse", _house]; _marker setMarkerShapeLocal "ICON"; _marker setMarkerTypeLocal "hd_dot"; _marker setMarkerTextLocal "Moja Willa";};
};

if(count(_prison) > 0) then {
	[_prison] spawn client_fnc_slpd_jail_setup;
} else {
	player setpos [7639.87,2553.39,0.00143814];
	if(_higherup) exitwith { player setpos _house};
	switch (_houselevel) do {
		case 1: {_nObject = nearestObjects [_house, ["Land_ivory_trailer_04","Land_ivory_trailer_01","Land_ivory_trailer_02","Land_ivory_trailer_03","Land_ivory_trailer_06","Land_ivory_trailer_05"], 30]; _containerpos = (_nobject select 0) getrelpos [8,0]; player setpos _containerpos;};
		case 2: {_nObject = nearestObjects [_house, ["Land_ivory_trailer_04","Land_ivory_trailer_01","Land_ivory_trailer_02","Land_ivory_trailer_03","Land_ivory_trailer_06","Land_ivory_trailer_05"], 30]; _containerpos = (_nobject select 0) getrelpos [8,0]; player setpos _containerpos;};
		case 3: {_nObject = nearestObjects [_house, ["Land_ivory_trailer_04","Land_ivory_trailer_01","Land_ivory_trailer_02","Land_ivory_trailer_03","Land_ivory_trailer_06","Land_ivory_trailer_05"], 30]; _containerpos = (_nobject select 0) getrelpos [8,0]; player setpos _containerpos;};
		case 4: {_nObject = nearestObjects [_house, ["Land_Ranch_DED_Ranch_02_F","Land_Ranch_DED_Ranch_01_F","Land_HouseC_R","Land_HouseC1_L","Land_HouseA1_L","Land_HouseB1_L"], 30]; _containerpos = (_nobject select 0) getrelpos [15,0]; player setpos _containerpos;};
		case 5: {_nObject = nearestObjects [_house, ["Land_Ranch_DED_Ranch_02_F","Land_Ranch_DED_Ranch_01_F","Land_HouseC_R","Land_HouseC1_L","Land_HouseA1_L","Land_HouseB1_L"], 30]; _containerpos = (_nobject select 0) getrelpos [15,0]; player setpos _containerpos;};
		case 6: {_nObject = nearestObjects [_house, ["Land_Ranch_DED_Ranch_02_F","Land_Ranch_DED_Ranch_01_F","Land_HouseC_R","Land_HouseC1_L","Land_HouseA1_L","Land_HouseB1_L"], 30]; _containerpos = (_nobject select 0) getrelpos [15,0]; player setpos _containerpos;};
		case 7: {_nObject = nearestObjects [_house, ["Land_HouseDoubleAL","Land_HouseDoubleAL2"], 30]; _containerpos = (_nobject select 0) getrelpos [15,0]; player setpos _containerpos;};
		case 8: {_nObject = nearestObjects [_house, ["Land_HouseDoubleAL","Land_HouseDoubleAL2"], 30]; _containerpos = (_nobject select 0) getrelpos [15,0]; player setpos _containerpos;};
		case 9: {_nObject = nearestObjects [_house, ["Land_HouseDoubleAL","Land_HouseDoubleAL2"], 30]; _containerpos = (_nobject select 0) getrelpos [15,0]; player setpos _containerpos;};
		case 10: {_nObject = nearestObjects [_house, ["Land_HouseDoubleAL","Land_HouseDoubleAL2"], 30]; _containerpos = (_nobject select 0) getrelpos [15,0]; player setpos _containerpos;};
	};
};

myhouse = _house;

[getPlayerUID player, "connected", name player] remoteExec ["Server_fnc_updateConnection", 2];
[player,1,[]] remoteExec ["Server_fnc_connectionLog",2];
player setVariable ["loadedIn", true, true];