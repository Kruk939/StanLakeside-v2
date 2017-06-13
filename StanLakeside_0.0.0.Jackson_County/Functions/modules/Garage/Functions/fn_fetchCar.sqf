/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

if ((lbCurSel 1500) == -1) exitWith {};
_str = lbData [1500, lbCurSel 1500];
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
        if (count (nearestObjects [_tempSpawnPoint , ["CAR","AIR","SHIP","TANK",'Armored'], 100]) isEqualTo 0) exitWith {
	    	_vehicle setPos _tempSpawnPoint;
			_vehicle setDir 270;
	    	hint "Pojazd został umiejscowiony na miejscu spawnu.";
	  	};
	   if (_i > _spawnPointsLength || _i isEqualTo _spawnPointsLength) exitWith { hint "Brak wolnych miejsc"; _error = true;};
	};
};

if (_error) exitWith {
	deleteVehicle _vehicle;
	diag_log "fetch error";
};

[_car select 0, 1] remoteExecCall ["ServerModules_Garage_fnc_changeStatus", 2];
_vehicle setVariable ["information", _car, true];
RPF_Cars pushBack _vehicle;
//RPF_Keys pushBack [_vehicle,(toLower((_car select 1)))];
