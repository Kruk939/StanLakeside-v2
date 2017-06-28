_message = ctrlText 1400;
_sender = ctrlText 1401;

if (_message isEqualTo (localize "STR_RPF_MODULES_PHONE_ENTERMSG")) exitWith {};

_message = _message splitString '"' joinString "";
_message = _message splitString ':' joinString "";

_sender = _sender splitString '"' joinString "";
_sender = _sender splitString ':' joinString "";

[_sender,_message] remoteExec ["ServerModules_Phone_fnc_sendCarsForSaleMessage",2];

[] call ClientModules_Phone_fnc_openPhoneInternet;