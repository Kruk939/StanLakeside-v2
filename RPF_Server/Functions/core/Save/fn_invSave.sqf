params ["_player"];
_uid = getPlayerUID _player;
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

_updatestr = format ["updateInventory:%1:%2:%3:%4", [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)], [(uniform _player), (vest _player), (backpack _player), (headgear _player)], _weapons, _uid];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;