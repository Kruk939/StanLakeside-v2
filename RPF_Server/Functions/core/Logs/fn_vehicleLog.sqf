/*
    Author: KifKick
    Date: 04.02.2017

    Params:
        0 - Object - player who do task
        1 - Object - unit on do task
        2 - Number - type of log
        3 - String - custom text
        4 - String - text for amount
    Description: Function that send SQL query to the server inserting logs for inspecting players.
    Return: nothing
 */
params["_player","_type","_text","_amount","_vehicleClassname","_vehicleName"];
private["_playerUID","_playerName","_playerCash","_playerBank","_playerInv"];

if(isNil "_player" || isNil "_type") exitWith {diag_log "VehicleLog: nil (1)";};
if("_type" isEqualTo "") exitWith {diag_log "VehicleLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "VehicleLog: _player is Null (3)";};
if (isNil "_amount") then {_amount = "";};
if (isNil "_vehicleClassname") then {_vehicleClassname = "";};
if (isNil "_vehicleName") then {_vehicleName = "";};

_text = "";

_playerUID = getPlayerUID _player;
_playerName = name _player;
_playerCash = _player getVariable ["cash",0];
_playerBank = _player getVariable ["bank",0];
_playerWeapons = [];
if (primaryWeapon _player != "") then {
	_playerWeapons pushBack [0, primaryWeapon _player, primaryWeaponMagazine _player, primaryWeaponItems _player, _player ammo (primaryWeapon _player)];
};
if (secondaryWeapon _player != "") then {
	_playerWeapons pushBack [1, secondaryWeapon _player, secondaryWeaponMagazine _player, secondaryWeaponItems _player, _player ammo (secondaryWeapon _player)];
};
if (handgunWeapon _player != "") then {
	_playerWeapons pushBack [2, handgunWeapon _player, handgunMagazine _player, handgunItems _player, _player ammo (handgunWeapon _player)];
};
_playerItems = [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)];
_playerClothes = [(uniform _player), (vest _player), (backpack _player), (headgear _player)];

switch (_type) do {
    case 1: {_type = "Kupno";};
    case 2: {_type = "Wyciagniecie";};
    case 3: {_type = "Schowanie";};
    case 4: {_type = "Zlomowanie";};
    case 5: {_type = "UstalenieCenySprzedaży";};
    case 6: {_type = "KupieniePojazdu";};
    case 7: {_type = "OtrzymanieKasyZSprzedaży";};
    case 8: {_type = "KupnoSamochoduFail";};
    //case 9: {_type = "";};
};


_insertstr = format ["log_vehicleLog:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10%:%11", _playerUID, _playerName, _playerCash, _playerBank, _playerItems, _playerClothes, _playerWeapons, _type, _text, _vehicleClassname, _vehicleName];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;