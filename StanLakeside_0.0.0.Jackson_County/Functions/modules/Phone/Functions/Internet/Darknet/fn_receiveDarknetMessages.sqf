params["_messages"];
disableSerialization;

lbClear 1500;

{

	_msgList = lbAdd [1500, format["%1 %2", "Nadawca:", _x select 0]];
	lbSetData [1500, _msgList, str [_x select 1, _x select 0]];

} foreach _messages;
lbSetCurSel [1500, ((count _messages) - 1)];