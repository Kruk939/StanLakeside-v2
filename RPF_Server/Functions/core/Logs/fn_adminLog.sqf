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

if(isNil "_player" || isNil "_type") exitWith {diag_log "AdminLog: nil (1)";};
if("_type" isEqualTo "") exitWith {diag_log "AdminLog: _type is empty (2)";};
if(isNull _player) exitWith {diag_log "AdminLog: _player is Null (3)";};
//if(isNull _unit) exitWith {diag_log "AdminLog: _unit is Null (4)";};

if (isNil "_amount") then {_amount = "";};

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
    case 1: {_type = "TeleportTo";};
    case 2: {_type = "TeleportToMe";};
    case 3: {_type = "Godmode_ON";};
    case 4: {_type = "Godmode_OFF";};
    case 5: {_type = "Invisible_ON";};
    case 6: {_type = "Invisible_OFF";};
    case 7: {_type = "KillTarget";};
    case 8: {_type = "SyncAll";};
    case 9: {_type = "Freeze";};
    case 10: {_type = "UnFreeze";};
    case 11: {_type = "DeleteItems";};
    case 12: {_type = "FullHealth";};
    case 13: {_type = "Revive";};
    case 14: {_type = "MoveInVehicle";};
    case 15: {_type = "EjectDriver";};
    case 16: {_type = "EjectAllFromVehicle";};
    case 17: {_type = "AdminESP_ON";};
    case 18: {_type = "AdminESP_OFF";};
    case 19: {_type = "300mCopyLoadout";};
    case 20: {_type = "300mTeleportToMe";};
    case 21: {_type = "300mRevive";};
    case 22: {_type = "ReviveAllOnSvr";};
    case 23: {_type = "UnlockVehicle";};
    case 24: {_type = "LockVehicle";};
    case 25: {_type = "GhostSpectate_ON";};
    case 26: {_type = "GhostSpectate_OFF";};
    case 27: {_type = "ToggleTP_ON";};
    case 28: {_type = "ToggleTP_OFF";};
    case 29: {_type = "ToggleTP_POS";};
    case 30: {_type = "KickPlayer";};
    case 31: {_type = "KickAll";};
    case 32: {_type = "300mRestrain";};
    case 33: {_type = "SyncPlayer";};
    case 34: {_type = "Add1000$";};
    case 35: {_type = "Arsenal";};
    case 36: {_type = "DebugConsole";};
    case 37: {_type = "AddFood";};
    case 38: {_type = "AddWater";};
    case 39: {_type = "AddHealthness";};
    case 40: {_type = "AddBattery";};
    case 41: {_type = "Camera";};
    case 42: {_type = "MessageAll";};
    case 43: {_type = "AdminInteractionLv1";};
    case 44: {_type = "AdminInteractionLv2";};
    case 45: {_type = "AdminInteractionOff";};
    //case 46: {_type = "";};
};


_insertstr = format ["adminLog:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16", _playerUID, _playerName, _playerCash, _playerBank, _playerItems, _playerClothes, _playerWeapons, _type, _text, _unitUID, _unitName, _unitCash, _unitBank, _unitItems, _unitClothes, _unitWeapons];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;