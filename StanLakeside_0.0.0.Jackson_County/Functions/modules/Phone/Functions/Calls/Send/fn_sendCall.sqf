params["_sender", "_senderPhone"];

if (RPF_phoneDisabled) exitWith {
	[1] remoteExecCall ["ClientModoules_Phone_fnc_failCall", _sender];

	_nameContact = "";
	{
		if ((_x select 1) isEqualTo _senderPhone) exitWith {_nameContact = (_x select 0);};
	} forEach RPF_phoneContacts;

	if (_nameContact != "") then {
		hint format["Kontakt: %1 próbował się z tobą połączyć, lecz masz wyłączone rozmowy!",_nameContact];
	} else {
		hint format["Numer: %1 próbował się z tobą połączyć, lecz masz wyłączone rozmowy!",_senderPhone];
	};
};
if (RPF_phoneInCall) exitWith {
	[2] remoteExecCall ["ClientModoules_Phone_fnc_failCall", _sender];

	_nameContact = "";
	{
		if ((_x select 1) isEqualTo _senderPhone) exitWith {_nameContact = (_x select 0);};
	} forEach RPF_phoneContacts;

	if (_nameContact != "") then {
		hint format["Kontakt: %1 próbował się z tobą połączyć, lecz jesteś już w rozmowie!",_nameContact];
	} else {
		hint format["Numer: %1 próbował się z tobą połączyć, lecz jesteś już w rozmowie!",_senderPhone];
	};
};

_nameContact = "";
	{
		if ((_x select 1) isEqualTo _senderPhone) exitWith {_nameContact = (_x select 0);};
	} forEach RPF_phoneContacts;

	if (_nameContact != "") then {
		hint format["Kontakt: %1 dzwoni do Ciebie!",_nameContact];
	} else {
		hint format["Numer: %1 dzwoni do Ciebie!",_senderPhone];
	};

RPF_phoneCallerObj = _sender;
RPF_phoneCallerNumber = _senderPhone;

RPF_phoneRinging = true;
[_nameContact, _senderPhone] spawn ClientModules_Phone_fnc_startRingingPhone;

//[player, player getVariable "phoneNumber"] remoteExecCall ["ClientModules_Phone_fnc_sendedCall", _sender];
