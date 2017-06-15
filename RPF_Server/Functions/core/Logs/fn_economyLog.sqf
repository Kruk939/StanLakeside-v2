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
params["_player","_unit","_type","_argumentArray"];
private["_playerUID","_playerName","_playerCash","_playerBank","_playerItems","_playerClothes","_playerWeapons","_text","_unitUID","_unitName","_unitBank","_unitCash","_unitItems","_unitClothes","_unitWeapons"];

if(isNil "_player" || isNil "_type") exitWith {diag_log "EconomyLog: nil (1)";};
if("_type" isEqualTo "") exitWith {diag_log "EconomyLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "EconomyLog: _player is Null (3)";};
//if(isNull _unit) exitWith {diag_log "EconomyLog: _unit is Null (4)";};

if (isNil "_price") then {_amount = "";};

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

if (isNull _unit) then {
    //diag_log "ActionLog: unit is not defined";
    _unitUID = ""; _unitName = ""; _unitCash = "0"; _unitBank = "0"; _unitItems = ""; _unitClothes = ""; _unitWeapons = "";
} else {
    _unitUID = getPlayerUID _unit;
    _unitName = name _unit;
    _unitCash = _unit getVariable ["cash",0];
    _unitBank = _unit getVariable ["bank",0];
    _unitWeapons = [];
    if (primaryWeapon _unit != "") then {
	    _unitWeapons pushBack [0, primaryWeapon _unit, primaryWeaponMagazine _unit, primaryWeaponItems _unit, _unit ammo (primaryWeapon _unit)];
    };
    if (secondaryWeapon _unit != "") then {
	    _unitWeapons pushBack [1, secondaryWeapon _unit, secondaryWeaponMagazine _unit, secondaryWeaponItems _unit, _unit ammo (secondaryWeapon _unit)];
    };
    if (handgunWeapon _unit != "") then {
	    _unitWeapons pushBack [2, handgunWeapon _unit, handgunMagazine _unit, handgunItems _unit, _unit ammo (handgunWeapon _unit)];
    };
    _unitItems = [(uniformItems _unit), (vestItems _unit), (backpackItems _unit), (assignedItems _unit)];
    _unitClothes = [(uniform _unit), (vest _unit), (backpack _unit), (headgear _unit)];
};

switch (_type) do {
    case 1: {_type = "Zakup"; _text = format["%1 kupił %2 w ilości %3 za %4 $", _argumentArray select 0, _argumentArray select 1, _argumentArray select 2, _argumentArray select 3];};
    case 2: {_type = "UlepszenieDomu"; _text = format["%1 ulepszył dom do poziomu %2 za 50.000$",_argumentArray select 0, _argumentArray select 1];};
    case 3: {_type = "Sprzedaż"; _text = format["%1 sprzedał %2 w ilości %3 za cenę %4", _argumentArray select 0, _argumentArray select 1, _argumentArray select 2, _argumentArray select 3];};
    //case 3: {_type = "";};
};


_insertstr = format ["log_economyLog:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16", _playerUID, _playerName, _playerCash, _playerBank, _playerItems, _playerClothes, _playerWeapons, _type, _text, _unitUID, _unitName, _unitCash, _unitBank, _unitItems, _unitClothes, _unitWeapons];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;