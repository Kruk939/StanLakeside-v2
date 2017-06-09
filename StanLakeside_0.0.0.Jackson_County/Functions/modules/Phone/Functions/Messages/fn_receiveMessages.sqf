params["_messages"];
disableSerialization;
//_display = findDisplay 1104;
//_msgList = _display displayCtrl 1500;

lbClear 1500;

{
	_sender = (_x select 1);
	_nameContact = "";

	{
		if ((_x select 1) isEqualTo _sender) exitWith {_nameContact = (_x select 0);};
	} forEach RPF_phoneContacts;

	if (_nameContact != "") then {
		_msgList = lbAdd [1500, format["%1", _nameContact]];
		lbSetData [1500, _msgList, str [_x select 0, _x select 1]];
	} else {
		_msgList = lbAdd [1500, format["%1", _x select 1]];
		lbSetData [1500, _msgList, str [_x select 0, _x select 1]];
	};
} foreach _messages;
lbSetCurSel [1500, 0];