/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.04.2017
		Params:
			0 - String, Type of get
			1 - Array, Data string(id or plate)
			2 - String, name of the function to return to
			3 - Object, player object to return to
		Description: Returns data to player
		Return: nothing
*/
params["_type","_data","_function_name","_player"];
if(_type == "dead") exitWith {
	_uid_player = _data select 0;
	_dead = _data select 1;
	if(_dead) then { _dead = 1; } else { _dead = 0 };
	_updatestr = format["medical_updateStatuses_dead:%1:%2", _dead, _uid_player];
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
};
if(_type == "all") exitWith {
	_uid_player = _data select 0;
	_damage = _data select 1;
	_dead = _data select 2;
	_bleeding = _data select 3;
	_statuses = _data select 4;
	_statusesString = "";
	{ _statusesString = format["%1:%2",_statusesString,_x]; } forEach _statuses;
	_updatestr = format["medical_updateStatuses_all:%1:%2:%3%4:%5",_damage, _dead, _bleeding, _statusesString, _uid_player];
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
};
