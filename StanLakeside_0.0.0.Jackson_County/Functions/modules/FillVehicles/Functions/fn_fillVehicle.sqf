uisleep 1;
RPF_filling = 2;

params ["_target"];
private ["_cashCheck", "_type", "_fuel", "_d", "_currFuel", "_c", "_i", "_startpos", "_dist"];

_type = typeOf _target;
_startpos = getpos _target;
_fuel = fuel _target;

if (_fuel isEqualTo 1) exitwith {hint (localize "STR_RPF_MODULES_FILLVEHICLES_REFUELED"); Rpf_filling = 0;};

_cashCheck = [1, 2] call Client_fnc_checkMoney;
if !(_cashCheck) exitwith {hint (localize "STR_RPF_MODULES_FILLVEHICLES_NOMONEY"); Rpf_filling = 0;};

hint (localize "STR_RPF_MODULES_FILLVEHICLES_REFUELING");

for "_i" from 1 to 10 do
{
	_cashCheck = [1, 2] call Client_fnc_checkMoney;
	if !(_cashCheck) exitwith {hint (localize "STR_RPF_MODULES_FILLVEHICLES_RANOUTOFCASH");};

	_dist = player distance _startpos;
	if (_dist > 5) exitwith {hint (localize "STR_RPF_MODULES_FILLVEHICLES_TOOFAR"); Rpf_filling = 0;};

	uiSleep 1;
	_d = (_i / 10) + _fuel;
	_target setFuel _d;

	_currFuel = fuel _target;

	if (_currFuel >= 1) exitWith {
	_target setFuel 1;
	hint (localize "STR_RPF_MODULES_FILLVEHICLES_DONE");
	Rpf_filling = 0;};

	[2] call Client_fnc_removeCash;
};

Rpf_filling = 0;
