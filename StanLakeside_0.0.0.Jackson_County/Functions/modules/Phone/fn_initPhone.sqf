/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
[player] remoteExecCall ["ServerModules_Phone_fnc_initPlayer",2];

player setVariable ["tf_unable_to_use_radio", true];
_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
_channel = _channel + 1;
[(call TFAR_fnc_activeSwRadio), _channel, getPlayerUID player] call TFAR_fnc_SetChannelFrequency;

RPF_phoneContacts = [];

// POTRZEBNE DO TELEFONU, DO ROZMÓW
RPF_phoneDisabled = false;
RPF_phoneInCall = false;
RPF_phoneRinging = false;
RPF_phoneTryingCall = false;
RPF_phoneCallerObj = objNull;
RPF_phoneCallerNumber = "";
RPF_phoneAnswerObj = objNull;
RPF_phoneChargePrice = 1;

[player] remoteExecCall ["ServerModules_Phone_fnc_fetchContacts", 2];
waitUntil {!(isNil "RPF_received_contacts")};

_menuItems = [
	[
		["alive player", "!(player getVariable ['cuffed', false])", "count (player call TFAR_fnc_radiosList) > 0"],
		[(localize "STR_RPF_MODULES_PHONE_TITLE"), "[] call ClientModules_Phone_fnc_openPhone",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Phone_inited = true;
diag_log "Phone Module inited";