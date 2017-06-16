/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
private["_str","_car","_vehicle","_classname","_tempSpawnPoint","_error","_spawnPointsAir","_spawnPointsLength"];
if ((lbCurSel 1101) == -1) exitWith {};
_str = lbData [1101, lbCurSel 1101];
_car = call compile _str;

closeDialog 0;

_vehicle = (_car select 1) createVehicle [0,0,0];
_vehicle allowDamage false;
_vehicle setDir 90;
[_car select 4, _vehicle] call Client_fnc_vehicleHitLoad;
_vehicle setFuel (_car select 10);
_vehicle lock 2;

_error = false;

if(_vehicle iskindof "CAR") then {
	_vehicle attachTo [player, [0, 5, 1.8]];
	RPF_attachedVehicle = true;
	_classname = toLower((_car select 1));
	if (str _classname find "jonzie_" > -1) then {[_vehicle, [(_car select 5),(_car select 6)]] call ClientModules_VehicleInits_fnc_JonzieInit; [_vehicle, (_car select 3), "jonzie"] remoteExec ["ClientModules_VehicleInits_fnc_numberPlate",2];};
	if (str _classname find "vvv_" > -1) then {[_vehicle, [(_car select 5),(_car select 6)], (_car select 7), (_car select 8), (_car select 9)] call ClientModules_VehicleInits_fnc_IvoryInit; [_vehicle, (_car select 3), "ivory"] remoteExec ["ClientModules_VehicleInits_fnc_numberPlate",2];};
	if (str _classname find "ivory_" > -1) then {[_vehicle, [(_car select 5),(_car select 6)], (_car select 7), (_car select 8), (_car select 9)] call ClientModules_VehicleInits_fnc_IvoryInit; [_vehicle, ["black","metallic"], "black", 10, 10] call ClientModules_VehicleInits_fnc_IvoryInit; [_vehicle, (_car select 3), "ivory"] remoteExec ["ClientModules_VehicleInits_fnc_numberPlate",2];};
	if (str _classname find "adilac_" > -1) then {[_vehicle, [(_car select 5),(_car select 6)], (_car select 7), (_car select 8), (_car select 9)] call ClientModules_VehicleInits_fnc_IvoryInit; [_vehicle, (_car select 3), "ivory"] remoteExec ["ClientModules_VehicleInits_fnc_numberPlate",2];};
	if (str _classname find "sl_red_" > -1) then {};
};
if(_vehicle iskindof "SHIP") then {
	_vehicle attachTo [player, [0, 25, 9]];
	RPF_attachedVehicle = true;
};
if (_vehicle isKindOf "AIR") then {
	_spawnPointsAir = [];
	if (player distance RPF_southAirPort < 1000) then {
		_spawnPointsAir = RPF_spawnPointsAir;
	} else {
		_spawnPointsAir = RPF_spawnPointsSecondAir;
	};
	_spawnPointsLength = count _spawnPointsAir -1;
	//_i = 0;
	for "_i" from 0 to _spawnPointsLength do {
        _tempSpawnPoint = _spawnPointsAir select _i;
        if (count (nearestObjects [_tempSpawnPoint , ["CAR","AIR","SHIP","TANK"], 100]) isEqualTo 0) exitWith {
	    	_vehicle setPos _tempSpawnPoint;
			_vehicle setDir 270;
	    	hint (localize "STR_RPF_MODULES_COMPANY_GARAGE_SPAWN");
	  	};
	   if (_i > _spawnPointsLength || _i isEqualTo _spawnPointsLength) exitWith { hint (localize "STR_RPF_MODULES_COMPANY_GARAGE_NOSPACE"); _error = true;};
	};
};

if (_error) exitWith {
	deleteVehicle _vehicle;
	diag_log "fetch error";
};

["active", [_car select 0], "", player] remoteExecCall ["ServerModules_Company_fnc_garageUpdate", 2];
_vehicle setVariable ["information", _car, false];
_vehicle setVariable ["public_veh_info",[_car select 0, _car select 3, "company_garage"],true];
RPF_Cars pushBack _vehicle;
//RPF_Keys pushBack [_vehicle,(toLower((_car select 1)))];
