params ["_player"];
private _uid = getPlayerUID _player;
private _holder = objNull;

if (_uid in RPF_activeCrates) exitwith {};
RPF_activeCrates pushback _uid;

_player setVariable ["usingHouseCargo", true, true];

_houselevel = _player getvariable ["houselevel", 0];

["Wysyłam zapytanie do bazy danych..."] remoteExec ["client_fnc_hintMP",_player];

_fetchstr = format ["getHouseContent:%1", _uid];
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
_housecontent = (_fetch select 0) select 0;

waitUntil {!(isNil "_housecontent")};

["Otrzymano informacje z bazy danych. Twoja skrzynka pojawiła się!"] remoteExec ["client_fnc_hintMP",_player];

switch (_houselevel) do {
	case 1: {_holder = createVehicle["kif_storage_sack", _player modeltoworld[0, 2, 10], [], 0, "can_Collide"];};
	case 2: {_holder = createVehicle["kif_storage_cartondarkmedium", _player modeltoworld[0, 2, 0], [], 0, "can_Collide"];};
	case 3: {_holder = createVehicle["kif_storage_travelbag", _player modeltoworld[0, 2, 0], [], 0, "can_Collide"];};
	case 4: {_holder = createVehicle["kif_storage_suitcase", _player modeltoworld[0, 2, 0], [], 0, "can_Collide"];};
	case 5: {_holder = createVehicle["kif_storage_cartonlightbig", _player modeltoworld[0, 2, 0], [], 0, "can_Collide"];};
	case 6: {_holder = createVehicle["kif_storage_wood", _player modeltoworld[0, 2, 0], [], 0, "can_Collide"];};
	case 7: {_holder = createVehicle["kif_storage_woodbarrel", _player modeltoworld[0, 2, 0, [], 0, "can_Collide"];};
	case 8: {_holder = createVehicle["kif_storage_woodbox", _player modeltoworld[0, 2, 0], [], 0, "can_Collide"];};
	case 9: {_holder = createVehicle["kif_storage_cargobox", _player modeltoworld[0, 2, 0], [], 0, "can_Collide"];};
	case 10: {_holder = createVehicle["kif_storage_cargobox10", _player modeltoworld[0, 2, 0], [], 0, "can_Collide"];};
};

_holder setVariable ["uid", _uid, true];

_myweapons = (_housecontent select 0);
_mymagazines = (_housecontent select 1);
_myitems = (_housecontent select 2);
_mybackpacks = (_housecontent select 3);


_processWeapons = _myWeapons select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _myweapons select 1;
        _itemNumber = _ItemCount select _count;
        _holder addWeaponCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _processWeapons;
};

_processMagazines = _myMagazines select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _mymagazines select 1;
        _itemNumber = _ItemCount select _count;
        _holder addMagazineCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _processMagazines;
};

_processItems = _myItems select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _myitems select 1;
        _itemNumber = _ItemCount select _count;
        _holder addItemCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _processItems;
};

_processBackpacks = _mybackpacks select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _mybackpacks select 1;
        _itemNumber = _ItemCount select _count;
        _holder addBackpackCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _processBackpacks;
};