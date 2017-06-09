/*
	1: car id
	2: type (0 to możliwy do wyciągnięcia, 1 to używany, 2 na parkingu policyjnym)
*/

params["_carID","_type"];

if (_type isEqualTo 0) then {
	_hits = _this select 2;
	_fuel = _this select 3;
	_update = [0, format["garage_updateStatusStore:%1:%2:%3:%4", _type, _hits, _fuel, _carID]] call ExternalS_fnc_ExtDBquery;
} else {
_update = [0, format["garage_updateStatus:%1:%2", _type, _carID]] call ExternalS_fnc_ExtDBquery;
};

