params ["_player","_holder"];
private _uid = getPlayerUID _player;

if (_uid in RPF_activeCrates) then {

	_player setVariable ["usingHouseCargo", false, true];

	_weapons = getWeaponCargo _holder;
    _magazines = getMagazineCargo _holder;
    _items = getItemCargo _holder;
    _backpacks = getBackpackCargo _holder;

	_housecontent = [_weapons,_magazines,_items,_backpacks];

	_updatestr = format["updateHouseContent:%1:%2", _housecontent, _uid];
    _update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;

	_units = nearestObjects [_holder, ["Man"], 50];
    {
		[] remoteExec ["client_fnc_closedialogs",_x];
	} foreach _units;

	deleteVehicle _holder;

	_pia = RPF_activeCrates find _uid;
    RPF_activeCrates deleteAt _pia;

	["Schowano pomyślnie skrzynkę!", false] remoteExec ["ClientModules_Notification_fnc_doMsg",_player];

} else {
	diag_log "uid not in activecrates!!!!";
};