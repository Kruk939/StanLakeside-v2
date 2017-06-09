if (RPF_phoneDisabled) exitWith {hint "Mam wyłączone rozmowy!";};
if (RPF_phoneInCall) exitWith {hint "Jestem już w rozmowie!";};
if (RPF_phoneTryingCall) exitWith {hint "Jestem już w trakcie dzwonienia!";};
if(count (player call TFAR_fnc_radiosList) isEqualTo 0) exitWith {hint "Nie masz telefonu"};
disableSerialization;
_contact = lbCurSel (1500);;
_contactNumber = lbData [1500, _contact];
_contactNumber = call compile format["%1", _contactNumber];

if (_contact isEqualTo -1) exitWith {};

//if(isNil "_contactNumber") exitwith {};
_contactNumber = (_contactNumber select 0);

[_contactNumber,player] remoteExecCall ["ServerModules_Phone_fnc_trySendCall",2];
RPF_phoneTryingCall = true;
[] spawn ClientModules_Phone_fnc_startTryingCallRing;