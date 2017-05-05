/*
Author: Kerkkoh
First Edit: 16.4.2016
*/
if (alive player) then {
	disableSerialization;
	CurrentCursorTarget = cursorObject;
	if(currentcursortarget distance player > 20) then { currentcursortarget = objNull; };
	penis = nearestObjects [player, [], 3];
	if (!isNull findDisplay 1014) exitWith {};

	createDialog "interaction";

	{
		ctrlShow [_x, false];
	}forEach RPF_InteractionButtons;

	_display = findDisplay 1014;
	_index1 = 0;

	RPF_iCurActionArray = [];

	{
		_cArray = _x select 0;
		_cTrue = true;
	
		for "_i" from 0 to ((count _cArray) - 1) step 1 do {
			_c = call compile (_cArray select _i);
			if (!_c) then {
				_cTrue = false;
			};
		};
	
		if (_cTrue) then {
			if (_index1 < 25) then {
				_idc = 1600 + _index1;
				_index1 = _index1 + 1;
				_text = (_x select 1) select 0;
				_action = (_x select 1) select 1;
				_color = call compile format["%1",(_x select 1) select 2];
			
				if(true) then {
					if(_color isEqualTo 2) exitwith { _idc = (_idc * 10) + 1; };
					if(_color isEqualTo 3) exitwith { _idc = (_idc * 10) + 2; };
					if(_color isEqualTo 4) exitwith { _idc = (_idc * 10) + 3; };
				};

				ctrlShow [_idc, true];
				ctrlSetText [_idc, _text];
			
				_control = _display displayCtrl _idc;
				_control ctrlSettextColor [1, 1, 1, 1];

				RPF_iCurActionArray pushBack _action;
			};
		};
	}forEach RPF_InteractionMenuItems;

};