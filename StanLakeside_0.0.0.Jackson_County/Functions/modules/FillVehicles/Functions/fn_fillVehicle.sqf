uisleep 1;
RPF_filling = 2;

params ["_target"];
private ["_cashCheck", "_type", "_fuel", "_d", "_currFuel", "_c", "_i", "_startpos", "_dist"];

_type = typeOf _target;
_startpos = getpos _target;
_fuel = fuel _target;

if (_fuel isEqualTo 1) exitwith {hint "Twoj samochod jest zatankowany do pelna!"; Rpf_filling = 0;};

_cashCheck = [1, 2] call Client_fnc_checkMoney;
if !(_cashCheck) exitwith {hint "Nie posiadasz 2$ na zatankowanie!"; Rpf_filling = 0;};

hint "Tankowanie...";

for "_i" from 1 to 10 do
{
	_cashCheck = [1, 2] call Client_fnc_checkMoney;
	if !(_cashCheck) exitwith {hint "Zabraklo ci pieniedzy!";};

	_dist = player distance _startpos;
	if (_dist > 5) exitwith {hint "Odszedles zbyt daleko, tankowanie anulowane"; Rpf_filling = 0;};

	uiSleep 1;
	_d = (_i / 10) + _fuel;
	_target setFuel _d;

	_currFuel = fuel _target;

	if (_currFuel >= 1) exitWith {
	_target setFuel 1;
	hint "Pojazd zostal zatankowany do pelna.";
	Rpf_filling = 0;};

	[2] call Client_fnc_removeCash;
};

Rpf_filling = 0;
