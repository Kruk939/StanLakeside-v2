params["_object"];
switch (typeOf cursorTarget) do {
	case "RPF_Plant_Olive": {
		_random = round(random 3) + 1;
		_msg = format["Uzyskałeś %1 oliwek!",_random];
		["Sukces", _msg, [0,255,0,1],""] call ClientModules_Notification_fnc_showNotification;
		while {_random > 0} do {
			 player addItem "RPF_Items_Olives";
			_random = _random - 1;
		 };
	};
	case "RPF_Plant_Poppy": {
		_random = round(random 3) + 1;
		_msg = format["Uzyskałeś %1 maku!",_random];
		["Sukces", _msg, [0,255,0,1],""] call ClientModules_Notification_fnc_showNotification;
		while {_random > 0} do {
			 player addItem "RPF_Items_Poppy";
			_random = _random - 1;
		 };
	};
};

["MarihuanaGathered"] call mav_ttm_fnc_addExp;
//[player,objNull,26,format ["%1 ściął marychę w sztukach %2 i jakości %3 CLASSNAME: %4",name player, _randomValue, _quality, _item],_randomValue] remoteExec ["server_fnc_actionLog", 2];

_point = RPF_plantArray find _object;
if(_point >= 0) then {RPF_plantArray deleteAt _point };

deletevehicle _object;