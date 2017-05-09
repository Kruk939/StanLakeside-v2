/*
Author: Kerkkoh
Last Edit: 26.11.2015
*/

params ["_player", "_id", "_uid", "_name"];

_house = _player getVariable "house";
_houselevel = _player getVariable "houselevel";

switch (_houselevel) do {
	case 1: {tier1housing pushback _house;};
	case 2: {tier1housing pushback _house;};
	case 3: {tier1housing pushback _house;};
	case 4: {tier2housing pushback _house;};
	case 5: {tier2housing pushback _house;};
	case 6: {tier2housing pushback _house;};
	case 7: {tier3housing pushback _house;};
	case 8: {tier3housing pushback _house;};
	case 9: {tier3housing pushback _house;};
	case 10: {tier3housing pushback _house;};
};

_weapons = [];
if (primaryWeapon _player != "") then {
	_weapons pushBack [0, primaryWeapon _player, primaryWeaponMagazine _player, primaryWeaponItems _player, _player ammo (primaryWeapon _player)];
};
if (secondaryWeapon _player != "") then {
	_weapons pushBack [1, secondaryWeapon _player, secondaryWeaponMagazine _player, secondaryWeaponItems _player, _player ammo (secondaryWeapon _player)];
};
if (handgunWeapon _player != "") then {
	_weapons pushBack [2, handgunWeapon _player, handgunMagazine _player, handgunItems _player, _player ammo (handgunWeapon _player)];
};

_updatestr = format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9", [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)], [(uniform _player), (vest _player), (backpack _player), (headgear _player)], _weapons, _player getVariable "cash", _player getVariable "bank", position _player, (_player getVariable "hunger"), (_player getVariable "thirst"), _uid];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;

[_uid,"disconnected"] spawn Server_fnc_updateConnection;