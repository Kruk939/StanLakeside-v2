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
private["_playerUID","_playerName","_playerCash","_playerBank","_playerInv","_unitUID","_unitName","_unitBank","_unitCash","_unitInv"];

if(isNil "_player" || isNil "_type") exitWith {diag_log "ActionLog: nil (1)";};
if("_type" isEqualTo "") exitWith {diag_log "ActionLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "ActionLog: _player is Null (3)";};
//if(isNull _unit) exitWith {diag_log "ActionLog: _unit is Null (4)";};

if (isNil "_text") then {_text = "";};
if (isNil "_amount") then {_amount = "";};

_playerUID = getPlayerUID _player;
_playerName = name _player;
_playerCash = _player getVariable ["wallet",-1];
_playerBank = _player getVariable ["atm",-1];
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
    _unitUID = ""; _unitName = ""; _unitCash = "0"; _unitBank = "0"; _unitInv = "";
} else {
    _unitUID = getPlayerUID _unit;
    _unitName = name _unit;
    _unitCash = _unit getVariable ["wallet",-1];
    _unitBank = _unit getVariable ["atm",-1];
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
    case 1: {_type = "Eskorta";};
    case 2: {_type = "WrzucenieDoPojazdu";};
    case 3: {_type = "WorekNaGłowę";};
    case 4: {_type = "WorekZGłowy";};
    case 5: {_type = "Skucie";};
    case 6: {_type = "Rozkucie";};
    case 7: {_type = "OkradniecieZKasy";};
    case 8: {_type = "Przeszukanie";};
    case 9: {_type = "Reanimacja";};
    case 10: {_type = "ZabranieWiertła";};
    case 11: {_type = "NamierzenieRozmowy";};
    case 12: {_type = "Nasikanie";};
    case 13: {_type = "Synchronizacja";};
    case 14: {_type = "NaprawienieWiertła";};
    case 15: {_type = "UkradniecieKasyZBanku";};
    case 16: {_type = "ZabezpieczeniePieniedzyWBanku";};
    case 17: {_type = "OkradniecieZKasyFail";};
    case 18: {_type = "Wytrych";};
    case 19: {_type = "RabunekSklepu";};
    case 20: {_type = "WynająłBiuro";};
    case 21: {_type = "SkrzynkaDom";};
    case 22: {_type = "SkrzynkaSklep";};
    case 23: {_type = "PrzeszukanieDomu";};
    case 24: {_type = "PrzeszukanieSklepu";};
    //case 25: {_type = "";};
};


_insertstr = format ["actionLog:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17", _playerUID, _playerName, _playerCash, _playerBank, _playerItems,, _playerClothes, _playerWeapons _type, _text, _unitUID, _unitName, _unitCash, _unitBank, _unitItems,, _unitClothes, _unitWeapons, _amount];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;