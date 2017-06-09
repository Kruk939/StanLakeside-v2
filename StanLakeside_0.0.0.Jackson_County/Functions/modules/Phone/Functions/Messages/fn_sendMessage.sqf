disableSerialization;
_contact = lbCurSel (1500);;
_contactNumber = lbData [1500, _contact];
_contactNumber = call compile format["%1", _contactNumber];
_message = ctrlText 1400;

if (_contact isEqualTo -1) exitWith {};
if (_message isEqualTo (localize "STR_RPF_MODULES_PHONE_ENTERMSG")) exitWith {};

[] call ClientModules_Phone_fnc_loadMessages;

//if(isNil "_contactNumber") exitwith {};
diag_log _contactNumber;
_contactNumber = (_contactNumber select 0);
diag_log _contactNumber;

_message = _message splitString '"' joinString "";
_message = _message splitString ':' joinString "";

[_contactNumber,_message,player] remoteExec ["ServerModules_Phone_fnc_sendMessage",2];