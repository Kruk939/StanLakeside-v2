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

if(isNil "_player" || isNil "_type") exitWith {diag_log "DeathLog: nil (1)";};
if("_type" isEqualTo "") exitWith {diag_log "DeathLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "DeathLog: _player is Null (3)";};
//if(isNull _unit) exitWith {diag_log "DeathLog: _unit is Null (4)";};

if (isNil "_weapon") then {_weapon = "";};
if (isNil "_distance") then {_distance = "0";};

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
    case 1: {_type = "Zabojstwo"; _text = format["%1 zabił %2 z dystansu %3 używając %4", _argumentArray select 0, _argumentArray select 1, _argumentArray select 2, _argumentArray select 3];};
    case 2: {_type = "Smierc"; _text = format["%1 zginął",_argumentArray select 0];};
    case 3: {_type = "Battlelog"; _text = format["%1 został zabity przez battleloga", _argumentArray select 0];};
    case 4: {_type = "Respawn"; _text = format ["%1 zrespawnił się", _argumentArray select 0];};
    //case 5: {_type = "";};
};


_insertstr = format ["log_deathLog:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17:%18", _playerUID, _playerName, _playerCash, _playerBank, _playerItems, _playerClothes, _playerWeapons, _type, _text, _unitUID, _unitName, _unitCash, _unitBank, _unitItems, _unitClothes, _unitWeapons, _weapon];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;